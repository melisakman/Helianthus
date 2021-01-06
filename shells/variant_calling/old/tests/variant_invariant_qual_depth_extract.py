## This script looks at quality scores and depth of invariant and variant sites 

import sys

InputFile1 = sys.argv[1]
OutputFile1 = "qual_depth_for_variant.txt"
OutputFile2 = "qual_depth_for_invariant.txt"


file1 = open(InputFile1, "r")
file2 = open(OutputFile1, "w")
file3 = open(OutputFile2, "w")

for line in file1:
        split = line.split("\t")
        list = []
        if split[0][0]== "#":
                continue
        else:
        	chr = split[0]
        	pos = split[1]
        	qual = split[5]
        	sample_range = range(1,len(split[9:])
        		
                if split[4] == ".":
                        file3.write(split[5] + "\n")
                        
                 else:
                        file2.write(split[5] + "\n")
