import sys

InputFile1 = sys.argv[1] # subset map file

OutputFile1 = sys.argv[2] # output file name group1

input = open(InputFile1, "r")
output = open(OutputFile1, 'w')
output.write("position\trate")
cM = 0
for line in input:
	split = line.split("\t")
	if split[0] == "position":
		continue
	else:
		pos = split[0]
		cM_new = float(split[1])
		to_write = cM_new - cM
		output.write("\n" + str(pos) + "\t" + str(to_write))
