import sys
import copy
import collections

InputFile1 = sys.argv[1] # genotype file from vcftools
InputFile2 = sys.argv[2] # snp file from vcftools
InputFile3 = sys.argv[3] # individual file from vcftools
InputFile4 = sys.argv[4] # individual cluster info (1st column accession. 2nd column cluster, separated by tab)

OutputFile1 = sys.argv[5] # name for output allale count file
OutputFile2 = sys.argv[6] # name for output total allele count file

file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")
file3 = open(InputFile3, "r")
file4 = open(InputFile4, "r")
out1 = open(OutputFile1, "w")
out2 = open(OutputFile2, "w")

no_snps = 0
for line in file2: # this creates the snp names in output file
	no_snps +=1
# 	split = line.split("\t")
# 	chr = split[0]
# 	pos = split[1][:-1]
# 	snp_no = str(chr) + "_" + str(pos)
# 	out1.write(snp_no + "\t" )
# out1.write("\n")	

no_snps = no_snps
list_empty_genotype = []
for i in range(0, no_snps): # this creates the empty genotype list to be matched with the cluster name in dict_cluster
	list_empty_genotype.append(0)

dict_cluster ={}
for i in range(1,15): # creates the dict that has cluster as key and a list of all 0s as value
	dict_cluster[str(i)] = copy.deepcopy(list_empty_genotype)

dict_sample_no = {}
for i in range(1,15): # creates the dict that has cluster as key and a list of all 0s as value for number of alleles in the sample
	dict_sample_no[str(i)] = copy.deepcopy(list_empty_genotype)

dict_acc_cluster = {}
for line in file4: # this creates a dict with accession name as key and cluster that it belongs to as value
	split4 = line.split("\t")
	accession = split4[0]
	cluster = split4[1][:-1]
	dict_acc_cluster[accession] = cluster

list_accession = []
for line in file3: # this creates a list of accessions used
	list_accession.append(line[:-1])

list_genotype = []
for line in file1: # this creates an ordered list of list of genotypes
	split = line[:-1].split("\t")[1:]
	list = []
	for i in split:
		list.append(i)		
	list_genotype.append(list)

count = -1
file3.seek(0)
for i in file3: # this creates the final dict with cluster no as key and adding the genotype data
	count +=1
	split = i.split("\n")
	individual = split[0]
	clusterID = dict_acc_cluster[individual]
	print clusterID
	for j in range(0,no_snps):
		if list_genotype[count][j] != "-1":
			dict_cluster[clusterID][j] += int(list_genotype[count][j])
			dict_sample_no[clusterID][j] +=2
		else:
			dict_cluster[clusterID][j] += 0
			dict_sample_no[clusterID][j] += 0
				
for k in sorted(dict_cluster, key=int): # writes the final dict for genotypes
	v = dict_cluster[k]
	listToStr = '\t'.join(str(e) for e in v)
	out1.write(str(k) + '\t' + listToStr + "\n")

for k in sorted(dict_sample_no, key=int): # writes the final dict for allele counts
	v = dict_sample_no[k]
	listToStr = '\t'.join(str(e) for e in v)
	out2.write(str(k) + '\t' + listToStr + "\n")
