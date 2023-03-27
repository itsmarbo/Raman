import os
import sys
from sys import argv
import numpy as np
import h5py
import matplotlib.pyplot as plt

filename = "cas.rasscf.h5"

with h5py.File(filename, "r") as f:
    # Print all root level object names (aka keys) 
    # these can be group or dataset names 
    print("Keys: %s" % f.keys())
    # get first object name/key; may or may NOT be a group
    a_group_key = list(f.keys())[0]
#    print(a_group_key)
    # get the object type for a_group_key: usually group or dataset
    print(type(f[a_group_key])) 
