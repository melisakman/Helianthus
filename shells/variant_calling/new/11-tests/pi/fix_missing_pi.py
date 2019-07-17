import sys
inputFile = sys.argv[1] # vcf file

outputFile = sys.argv[2] # fixed vcf file


file_in = open(inputFile, "r")
file_out= open(outputFile, "w")

for line in file_in:
	split = line.split("\t")
	if split[0][0] == "#":
		file_out.write(line)
	
	else:
		file_out.write(split[0] + "\t" + split[1] + "\t" + split[2] + "\t" + split[3] + "\t" + split[4] + "\t" + split[5] + "\t" + split[6] + "\t" + split[7] + "\t" + split[8] + "\t")
		for x in range(9,93):
			item = split[x]
			coding = item.split(":")
			if x != 92:
				if coding[0] == ".":
					file_out.write("./.:.:.:.:.:.:.:.\t")
				else:
					file_out.write(item + "\t")
			else:
				if coding[0] == ".":
					file_out.write("./.:.:.:.:.:.:.:.\n")
				else:
					file_out.write(item)

				
