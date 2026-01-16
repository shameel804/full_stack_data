
import sys
import re

def fix_json_file(filepath):
    try:
        with open(filepath, 'r') as f:
            content = f.read()
        
        # Replace pattern: ending bracket, optional whitespace, starting bracket
        # e.g. ]\n[ or ][ or ] [
        # replace with ,
        
        # Check if multiple arrays exist
        matches = re.findall(r'\]\s*\[', content)
        if not matches:
            print(f"No concatenated arrays found in {filepath}. Content seems legitimate or is invalid in another way.")
            return

        print(f"Found {len(matches)} array boundaries in {filepath}. Merging...")
        
        new_content = re.sub(r'\]\s*\[', ',', content)
        
        # Validate result is roughly valid JSON (starts with [ ends with ])
        if not new_content.strip().startswith('['):
            print(f"Warning: {filepath} does not start with [ after fix.")
        if not new_content.strip().endswith(']'):
            print(f"Warning: {filepath} does not end with ] after fix.")
            
        with open(filepath, 'w') as f:
            f.write(new_content)
        print(f"Fixed {filepath}.")
        
    except Exception as e:
        print(f"Error fixing {filepath}: {e}")

if __name__ == "__main__":
    for file in sys.argv[1:]:
        fix_json_file(file)
