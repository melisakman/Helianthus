import sys

InputFile = sys.argv[1] # vcf file
OutputFile = sys.argv[2] # name for output file 

file = open(InputFile, "r")
out = open(OutputFile, "w")

for line in file:
	split = line.split("\t")
	if split[0][0] == "#":
		continue
	else:
		if split[4] == ".":
			qual = split[5]
			out.write(str(qual) + "\n")
		else:
			continue
