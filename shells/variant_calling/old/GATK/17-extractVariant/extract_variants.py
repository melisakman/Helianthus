import sys

InputFile1 = sys.argv[1] 

OutputFile1 = sys.argv[2]

file1 = open(InputFile1, "r")
file2 = open(OutputFile1, 'w')

for line in file1:
	split = line.split("\t")
	if split[0][0] == "#":
		file2.write(line)
	else:
		alt = split[4] 
		if alt != ".":
			file2.write(line)
		else:
			continue
		