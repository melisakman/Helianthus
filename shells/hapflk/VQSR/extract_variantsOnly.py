import sys

InputFile = sys.argv[1] # vcf file

OutputFile = sys.argv[2] # output file name group1

file1 = open(InputFile, "r")
file2 = open(OutputFile, 'w')

for line in file1: 
	splt = line.split("\t")
	if splt[0][0] == "#":
		file2.write(line)
	else:
		chr = splt[0]
		pos = splt[1]
		print pos
		ref = splt[3]
		alt = splt[4]
		if alt == ".":
			continue
		else:
			file2.write(line)