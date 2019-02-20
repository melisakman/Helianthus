import sys

InputFile1 = sys.argv[1] # genotype file
InputFile2 = sys.argv[2] # snp file
InputFile3 = sys.argv[3] # individual file
InputFile4 = sys.argv[4] # used accessions file

OutputFile1 = sys.argv[5] # name for output file counts
OutputFile2 = sys.argv[6] # name for output file sample size


file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")
file3 = open(InputFile3, "r")
file4 = open(InputFile4, "r")

out1 = open(OutputFile1, "w")
out2 = open(OutputFile2, "w")

# for line in file2: # this writes the SNP names in the file if necessary
# 	split = line.split("\t")
# 	chr = split[0]
# 	pos = split[1][:-1]
# 	snp_no = str(chr) + "_" + str(pos)
# 	out1.write(snp_no)
# out1.write("\n")	


accession_list = []

for line in file4:
	accession_list.append(line[:-1])

ind= {}
count = 0
for line in file3: # creates line index for ind names
	count +=1
	ind[count] = line[:-1]
individual = 0

for line1 in file1:
	individual +=1
	split1 = line1[:-1].split("\t")
	length = len(split1) 
	if ind[individual] in accession_list:
		for i in range(1,length):
			if split1[i] == "-1":
				out1.write("0" + "\t")
				out2.write("0" + "\t")
			else:
				out1.write(str(split1[i]) + "\t")
				out2.write("2" + "\t")
		out1.write("\n")
		out2.write("\n")


	else:
		continue