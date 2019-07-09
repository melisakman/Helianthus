import sys
inputFile = sys.argv[1] # pi file as created by vcftools

outputFile = sys.argv[2] # output file name w/o NA


file_in = open(inputFile, "r")
file_out= open(outputFile, "w")

for line in file_in:
	split = line.split("\t")
	if split[0][0] == "#":
		file_out.write(line)
	else:
		for x in range(0,93):
			item = split[x]
			if x != 92:
				if item == ".:.:.:.:.:.:.:.":
					file_out.write("./.:.:.:.:.:.:.:.\t")
				else:
					file_out.write(item + "\t")
			else:
				if item[:-1] == ".:.:.:.:.:.:.:.":
					file_out.write("./.:.:.:.:.:.:.:.\n")
				else:
					file_out.write(item)

				
