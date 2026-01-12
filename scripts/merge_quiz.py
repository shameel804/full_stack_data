import json
import random
import sys
import os

def distribute_items(existing_list, new_items):
    """
    Distributes new_items into existing_list evenly, preserving the order of existing_list.
    """
    if not new_items:
        return existing_list
    if not existing_list:
        return new_items

    result = []
    total_existing = len(existing_list)
    total_new = len(new_items)
    
    # Calculate spacing
    # We want to insert new items at intervals.
    # Total slots = total_existing + total_new
    # We will iterate through the combined length and pick from either list.
    
    # Simpler approach: 
    # Determine indices in the final list where new items should go.
    # We want to spread 'total_new' items across 'total_existing + total_new' slots.
    
    final_length = total_existing + total_new
    new_indices = set([int(i * final_length / total_new) for i in range(total_new)])
    
    existing_idx = 0
    new_idx = 0
    
    for i in range(final_length):
        # If this index is reserved for a new item (and we have new items left)
        # OR if we ran out of existing items
        if (i in new_indices and new_idx < total_new) or existing_idx >= total_existing:
             if new_idx < total_new:
                result.append(new_items[new_idx])
                new_idx += 1
             else:
                # Should not happen if logic is correct, but safe fallback
                result.append(existing_list[existing_idx])
                existing_idx += 1
        else:
            result.append(existing_list[existing_idx])
            existing_idx += 1
            
    return result

def validate_question(q):
    required_keys = ["q", "type"]
    for key in required_keys:
        if key not in q:
            return False, f"Missing key: {key}"
    
    valid_types = ["fill_blank", "match", "true_false", "rearrange"]
    if q["type"] not in valid_types:
        return False, f"Invalid type: {q['type']}"
        
    # Check for forbidden characters (simple heuristic for latex/math)
    forbidden = ["\\alpha", "\\beta", "\\mu", "≤", "≥", "≠", "√", "$$"]
    q_str = json.dumps(q)
    for char in forbidden:
        if char in q_str:
            return False, f"Forbidden character found: {char}"
            
    return True, ""

def main():
    if len(sys.argv) < 3:
        print("Usage: python merge_quiz.py <existing_file> <new_questions_json_string_or_file>")
        sys.exit(1)

    existing_file = sys.argv[1]
    new_input = sys.argv[2]
    
    existing_data = []
    if os.path.exists(existing_file):
        try:
            with open(existing_file, 'r') as f:
                content = f.read().strip()
                if content:
                    existing_data = json.loads(content)
        except Exception as e:
            print(f"Error reading existing file: {e}")
            # If error, maybe start empty or exit? existing_data remains []
            
    try:
        # Check if new_input is a file or a string
        if os.path.exists(new_input):
             with open(new_input, 'r') as f:
                new_questions = json.loads(f.read())
        else:
            new_questions = json.loads(new_input)
    except Exception as e:
        print(f"Error parsing new input: {e}")
        sys.exit(1)
        
    if not isinstance(new_questions, list):
         print("New questions must be a list")
         sys.exit(1)

    # Validate new questions
    valid_new_questions = []
    for q in new_questions:
        is_valid, msg = validate_question(q)
        if is_valid:
            valid_new_questions.append(q)
        else:
            print(f"Skipping invalid question: {msg} \n {q}")

    # Deduplicate (optional, but good practice - checking 'q' text)
    existing_texts = set(q.get("q", "") for q in existing_data)
    unique_new_questions = []
    for q in valid_new_questions:
        if q.get("q", "") not in existing_texts:
            unique_new_questions.append(q)
            existing_texts.add(q.get("q", "")) # Add to set to prevent dups within new batch
    
    print(f"Merging {len(unique_new_questions)} new questions into {len(existing_data)} existing ones.")
    
    # Distribute
    final_list = distribute_items(existing_data, unique_new_questions)
    
    # Save
    with open(existing_file, 'w') as f:
        json.dump(final_list, f, indent=4)
        
    print(f"Successfully saved {len(final_list)} questions to {existing_file}")

if __name__ == "__main__":
    main()
