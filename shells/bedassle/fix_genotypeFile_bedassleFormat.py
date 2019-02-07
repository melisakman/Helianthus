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

no_snps = 0
for line in file2:
	no_snps +=1
	split = line.split("\t")
	chr = split[0]
	pos = split[1][:-1]
	snp_no = str(chr) + "_" + str(pos)
	out.write(snp_no + "\t" )
out.write("\n")	

no_snps = no_snps
list_empty_genotype = []
for i in range(0, no_snps):
	list_empty_genotype.append(0)

dict_cluster ={}
for i in range(1,15):
	dict_cluster(i) = list_empty_genotype

dict_acc_cluster = {}
for line in file4:
	split4 = line.split("\t")
	accession = split4[0]
	cluster = split4[1]
	dict_acc_cluster(accession) = cluster

list_accession = []
for line in file1:
	list_accession.append(line[:-1])

list_genotype = []
for line in file1:
	split = line.split("\t")
	list = []
	for i in split:
		list.append(i)		
	list_genotype.append(list)

	
count = -1
for i in file3:
	count +=1
	split = i.split("\n")
	individual = split[0]
	accession = list_accession[i]
	clusterID = dict_acc_cluster(individual)
	for i in range(0,no_snps):
		dict_cluster(clusterID)[i] = dict_cluster(clusterID)[i] + list_genotype[count][i] 
		
for k, v in dict_cluster.items():
    out1.write(str(k) + '\t' + "%s\t" % item for item in v:
      
	snp1	snp2	snp3
ind1	total_alleles	0	2	-1
ind2	total_alleles	1	0	-1