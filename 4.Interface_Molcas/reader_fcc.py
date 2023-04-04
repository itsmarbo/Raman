#!/usr/bin/env python3

import sys

def get_num_atom(locator, data):
    temp = locator + 4
    temp2 = data[temp].split()
    while len(temp2) > 0:
        temp += 1
        temp2 = data[temp].split()
    temp3 = data[temp - 1].split()
    return int(temp3[0])

def show_freq(normode):
    atoms = normode.keys()
    final = []
    for a in atoms:
        final.append( f"{a},{normode[a][0]:.6f},{normode[a][1]:.6f},{normode[a][2]:.6f}\n" )
    return final

# fcc generator

filename = sys.argv[1]

freqs = []  #for frequencies
intense = []  #for intensities
redmass = []  #for red mass

freq_start = [] #points to where freqs start each block
normal_modes = {} #for the normal modes

#To read the main file
with open(filename, 'r') as f:
        data = f.readlines()

#To obtain the frequencies
for i, line in enumerate(data):
    if (('Frequency' in line) and not ("cm-1" in line)):
        freq_start.append(i)
        temp_freqs = line.split()
        freqs += [complex(0, float(j[1:])) if "i" in j else float(j) for j in temp_freqs[1:]]
    
    if ('Intensity' in line):
        temp_intense = line.split()
        intense += [complex(0, float(j[1:])) if "i" in j else float(j) for j in temp_intense[1:]]

    if ('Red. mass' in line):
        temp_redmass = line.split()
        redmass += [float(j) for j in temp_redmass[2:]]
    
    if ('Cartesian Coordinates / Bohr, Angstrom' in line):
        natoms = get_num_atom(i, data)

for i in freq_start:
    temp_freqs = data[i].split()
    temp_freqs = temp_freqs[1:]

    for j in range(i + 5, i + 5 + natoms*3):
        temp_nm = data[j].split()
        temp_nm_num = [float(k) for k in temp_nm[2:]]

        for l, frecuencia in enumerate(temp_freqs):
            if not (frecuencia in normal_modes.keys()):
                normal_modes[frecuencia] = {}
            if not (temp_nm[0] in normal_modes[frecuencia].keys()):
                normal_modes[frecuencia][temp_nm[0]] = []
            normal_modes[frecuencia][temp_nm[0]].append(temp_nm_num[l])

#print("----- Frequency: -----")
#print("\n".join([ str(f) for f in freqs ]))

#print("----- Intensity: -----")
#print("\n".join([ str(f) for f in intense ]))

#print("------  Red. mass: ------")
#print("\n".join([ str(f) for f in redmass ]))

print("------ Output created ------") #To obtain the formal output
with open('normal_modes.txt', 'w') as nm:
    all_data = []
    all_data.append("---- Frequencies ----- \n ")
    all_data.append("\n".join([str(f) for f in freqs]))
    all_data.append("\n----- Intensities -----\n")
    all_data.append("\n".join([str(i) for i in intense]))
    all_data.append("\n ----- Red. Masses -----\n")
    all_data.append("\n".join([str(r) for r in redmass]))
    all_data.append("\n ----- Normal Modes -----\n")
    for f in normal_modes.keys():
        all_data.append(f"\n\n{f}\n\n")     #For every frequency, theres a normal mode
        all_data += show_freq(normal_modes[f])
    nm.writelines(all_data)