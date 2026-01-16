
import json
import os
import sys

if len(sys.argv) < 3:
    print("Usage: python merge_json.py <target_file> <source_file>")
    sys.exit(1)

target_file = sys.argv[1]
source_file = sys.argv[2]

if not os.path.exists(target_file):
    # If target doesn't exist, just rename source to target
    os.rename(source_file, target_file)
    with open(target_file, 'r') as f:
        data = json.load(f)
    print(f"Created {target_file} with {len(data)} items.")
    sys.exit(0)

with open(target_file, 'r') as f:
    data1 = json.load(f)

with open(source_file, 'r') as f:
    data2 = json.load(f)

data1.extend(data2)

with open(target_file, 'w') as f:
    json.dump(data1, f, indent=4)

os.remove(source_file)
print(f"Merged {len(data2)} items. Total: {len(data1)}")
