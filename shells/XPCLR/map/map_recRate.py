import sys

InputFile1 = sys.argv[1] # map file

OutputFile1 = sys.argv[2] # output file name group1

input = open(InputFile1, "r")
output = open(OutputFile1, 'w')
output.write("position\trate")
cM = 0
for line in input:
	split = line.split("\t")
	pos = split[1]
	cM_new = float(split[2])
	to_write = cM_new - cM
	output.write("\n"str(pos) + "\t" + str(to_write))
