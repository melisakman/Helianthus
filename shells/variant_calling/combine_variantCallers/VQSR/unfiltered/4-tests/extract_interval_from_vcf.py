# This script is to get a specific interval from a vcf file to look at those sites in detail

import sys

InputFile = sys.argv[1] 
OutputFile = sys.argv[2] 
bin_chr = sys.argv[3]
bin_start = int(sys.argv[4])
bin_end = int(sys.argv[5])

file = open(InputFile, "r")
output = open(OutputFile, 'w')

for line in file:
	split = line.split("\t")
	if split[0][0] == "#":
		continue
	else:
		chr = split[0]
		site = int(split[1])
		if chr == bin_chr:
			if bin_start <= site and site <= bin_end:
				print 1
				output.write(line)
			else:
				continue
		else:
			break
		
		
		
		
		
