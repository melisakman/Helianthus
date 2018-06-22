##This script is for detecting what the false negative sites are.
## input sites.txt file is from bcftools isec and truth set is from Greg

import sys

InputFile1 = sys.argv[1] # sites file
InputFile2 = sys.argv[2] # file with sites that do not show in the truth set
OutputFile1 =sys.argv[3] # output
file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")
file3 = open(OutputFile1, "w")
list = []
for line2 in file2:
	list.append(line2[:-1])

for line1 in file1:
	split = line1.split("\t")
	pos = split[1]
	if pos in list and split[0] == "HanXRQChr01":
		file3.write(line1)
	else:
		continue
		