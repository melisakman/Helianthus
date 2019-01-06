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
		to_write = float(cM_new - cM)
		cM = cM_new/100
		sayi = '%17.11f' % to_write #str(to_write)
		output.write("\n" + str(pos) + "\t" + sayi)
