# This script is to get a specific interval from a vcf file to look at those sites in detail

import sys

InputFile = sys.argv[1] 
OutputFile = sys.argv[2] 
OutputFile2 = sys.argv[3]
bin_chr = sys.argv[4]
bin_start = int(sys.argv[5])
bin_end = int(sys.argv[6])

file = open(InputFile, "r")
output = open(OutputFile, 'w')
output2 = open(OutputFile2, 'w')

for line in file:
	split = line.split("\t")
	if split[0][0] == "#":
		continue
	else:
		chr = split[0]
		site = int(split[1])
		ref = split[3]
		alt = split[4]
		qual = split[5]
		if chr == bin_chr:
			if bin_start <= site and site <= bin_end:
				output.write(line)
				output2.write(str(site) + "\t" + ref + "\t" + alt + "\t" + str(qual) + "\n")								
			else:
				continue
		else:
			break
		
		
		
		
		
