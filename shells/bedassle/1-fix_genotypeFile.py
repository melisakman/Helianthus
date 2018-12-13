import sys

InputFile1 = sys.argv[1] # genotype file
InputFile2 = sys.argv[2] # snp file
InputFile3 = sys.argv[3] # individual file

OutputFile = sys.argv[4] # name for output file

file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")
file3 = open(InputFile3, "r")
out = open(OutputFile, "w")

for line in file2:
	split = line.split("\t")
	chr = split[0]
	pos = split[1]
	snp_no = str(chr) + "_" + str(pos)
	out.write("\t" + snp_no)

ind = []

for line in file3:
	ind.append(line[:-1])
count =-1
for line in file1:
	count +=1
	out.write(ind[count])
	out.write("\t" + line)
	
	