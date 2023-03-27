import os

replacement_file = 'coordinates.txt'

for filename in os.listdir('.'):
  if filename.endswith('.com'):
    with open(filename, 'r') as f:
      lines = f.readlines()
    with open(replacement_file, 'r') as f:
      replacement_lines = f.readlines()
    with open(filename, 'w') as f:
      for i, line in enumerate(lines):
        if i >= 8 and i <= 20:
          f.write(replacement_lines[i-8])
        else:
          f.write(line)