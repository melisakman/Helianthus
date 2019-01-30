import sys

InputFile1 = sys.argv[1] # genotype file from vcftools
InputFile2 = sys.argv[2] # snp file from vcftools
InputFile3 = sys.argv[3] # individual file from vcftool
InputFile4 = sys.argv[4] # individual cluster info (1st column accession. 2nd column cluster)

OutputFile1 = sys.argv[5] # name for output count file
OutputFile2 = sys.argv[6] # name for output sample size file

file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")
file3 = open(InputFile3, "r")
file4 = open(InputFile4, "r")

out1 = open(OutputFile1, "w")
out2 = open(OutputFile2, "w")

for line in file2:
	split = line.split("\t")
	chr = split[0]
	pos = split[1][:-1]
	snp_no = str(chr) + "_" + str(pos)
	out.write(snp_no + "\t" )
out.write("\n")	

clusters = {}
for line in file4:
	split4 = line.split("\t")
	accession = split4[0]
	cluster = split4[1]
	clusters(cluster) = accession

ind = []
for line in file3:
	ind.append(line[:-1])

count = 0
big_dict = {}
for line in file1:
	count +=1
	name_of_indi_dict = str(ind[count]) 
	split1 = line.split("\t")
	for snp in range(0,len(split1):
		big_dict(name_of_indi_dict) = int(split1[snp])


for key in clusters:

	
	
	snp1	snp2	snp3
ind1	total_alleles	0	2	-1
ind2	total_alleles	1	0	-1