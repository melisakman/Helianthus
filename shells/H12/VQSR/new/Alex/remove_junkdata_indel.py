import sys

InputFile1 = sys.argv[1] # modified file

OutputFile1 = sys.argv[2] # output file name group1

file1 = open(InputFile1, "r")
file2 = open(OutputFile1, "w")

for line in file1:
	dict = {}
	split = line.split(" ")
	if split[0] == "Anzac_Pueblo":
		file2.write(line)
	elif split[0] == "lr":
		file2.write(line)
	else:
		ref = split[3]
		alt = split[4]
		if len(ref) == 1 and len(alt) == 1:
			file2.write(line)
		else:
			continue