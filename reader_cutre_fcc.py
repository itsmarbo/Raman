#!/usr/bin/env python3

import sys
import csv

# fcc generator

filename = sys.argv[1]

freqs = []
intense = []

with open(filename, 'r') as f:
    data = f.readlines()

for i, line in enumerate(data):
    if (('Frequency' in line) and not ("cm-1" in line)):
        temp_freqs = line.split()
        freqs += [complex(0, float(j[1:])) if "i" in j else float(j) for j in temp_freqs[1:]]

print("Frequency:")
print("\n".join([ str(f) for f in freqs ]))
#print("{:<10}".format(str(freqs)))
#for freq in freqs:
#    print("{:<10}".format(str(freq)))
 #To obtain the intensities
for i, line in enumerate(data):
    if ('Intensity' in line):
        temp_intense = line.split()
        intense += [complex(0, float(j[1:])) if "i" in j else float(j) for j in temp_intense[1:]]
 
print("Intensity: ")
print("\n".join([ str(f) for f in intense ]))

#To obtain the red.mass
for i, line in enumerate(data):
        if ('Red.' in line):
            temp_redmass = line.split()
            redmass += [float(j) for j in temp_redmass[2:]]

print("------  Red. mass: ------")
print("\n".join([ str(f) for f in redmass ]))

#To read the distortions
with open(filename) as f:
reader = csv.reader(f)
for row in reader:
     if row[1] in ['x', 'y', 'z']:
        print('----- Distortions -----')          
        print(row)



         temp_distortions = line.split()
    if len(temp_distortions) >= 17 and temp_distortions[16] in ['x', 'y', 'z']:
        distortions += [float(j) for j in temp_distortions[0:]]


