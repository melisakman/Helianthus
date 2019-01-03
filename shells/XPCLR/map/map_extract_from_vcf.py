import sys

InputFile1 = sys.argv[1] # vcf file

OutputFile1 = sys.argv[2] # output file name group1

input = open(InputFile1, "r")
output = open(OutputFile1, 'w')
output.write("position\tcM\n")
for line in input:
	split = line.split("\t")
	if split[0][0] == "#" or split[0][0] == "C":
		continue
	else:
		pos = split[1]
		cM= split[2]
	output.write(str(pos) + "\t" + str(cM) + "\n")
