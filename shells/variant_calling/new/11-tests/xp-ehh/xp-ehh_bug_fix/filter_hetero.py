import sys

InputFile = sys.argv[1] # vcf file

OutputFile =  sys.argv[2]

infile = open(InputFile, "r")
outfile = open(OutputFile, 'w')

for line in infile:
	split = line.split("\t")
	sample_no = len(split)
	if split[0][0] == "#":
		outfile.write(line)
	else:
		for i in range(9, sample_no):	
			split2 = split[i].split(":")[0]
			if split2 == "0/0" or split2 == "0|0" or split2 == "1/1" or split2 == "1|1":
				outfile.write(line)
				break
			elif split2 == "./." or split2 == ".":
				continue
			
			
