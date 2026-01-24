import os
import json
import re
import sys

root_dir = "/Users/shameelabid/MyWork/FullStackQuiz/full_stack_data/v1"
target_courses = [
    "Git", "Collaboration Platforms", "Containerization", "CI CD", "Cloud Platforms",
    "Monitoring & Scaling", "Unit Testing", "Integration Testing", "End-to-End Testing"
]

# Regex: Alternation of specific strings/chars
# x̄ is x + combining macron (\u0304)
forbidden_pattern = re.compile(r'\\alpha|\\mu|\\sigma|\\bar\{x\}|\\\(|\\\)|x\u0304|[αβμσ±≤≥≠√]|\$\$')

errors = []

for dirpath, dirnames, filenames in os.walk(root_dir):
    # Filter by course
    is_target = False
    for course in target_courses:
        if f"/{course}/" in dirpath or dirpath.endswith(course):
            is_target = True
            break
    
    if not is_target:
        continue
        
    # Filter by "projects" folder
    if "/projects" not in dirpath:
        continue

    for filename in filenames:
        if not filename.endswith(".json"):
            continue
        
        filepath = os.path.join(dirpath, filename)
        
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                content = f.read()
                data = json.loads(content)
                
            # Check forbidden patterns
            match = forbidden_pattern.search(content)
            if match:
                errors.append(f"Forbidden pattern matched '{match.group(0)}' in {filepath}")
            
            # Check structure
            if not isinstance(data, list):
                 errors.append(f"Root must be list in {filepath}")
            else:
                for idx, item in enumerate(data):
                    if not all(k in item for k in ["title", "ques", "answer", "explanation"]):
                        errors.append(f"Missing keys in item {idx} of {filepath}")
        
        except json.JSONDecodeError as e:
            errors.append(f"Invalid JSON in {filepath}: {e}")
        except Exception as e:
            errors.append(f"Error processing {filepath}: {e}")

if errors:
    print("Errors found:")
    for e in errors:
        print(e)
    sys.exit(1)
else:
    print(f"All checks passed for target courses: {', '.join(target_courses)}")
