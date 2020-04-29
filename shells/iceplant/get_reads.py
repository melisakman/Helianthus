import sys

InputFile = sys.argv[1] # finalGene file
OutFile = sys.argv[2]

file = open(InputFile, "r")
out = open(OutFile, "w")

count = 2
read_count = 0

for line in file:
	count += 1
	if read_count <= 2000:
		if count == 4:
			read_count += 1
			out.write(">" + str(read_count) + "\n" + line)
			count = 0
		else:
			continue
	else:
		break
		