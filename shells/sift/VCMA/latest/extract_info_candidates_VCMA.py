import sys

InputFile1 = sys.argv[1] # vcf file
InputFile2 = sys.argv[2] # gene name file

OutputFile1 = sys.argv[3]

file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")
file3 = open(OutputFile1, 'w')

gene_list = []

for i in file2:
	gene_list.append(i[0:-1])
	
range_lr = range(0,24)
range_wd = range(25,50)
# range_mex = range(23,28)
wild_ref = 0
wild_hetero = 0
wild_alt = 0
lr_ref = 0
lr_hetero = 0 
lr_alt = 0
# mex_ref = 0
# mex_hetero = 0 
# mex_alt = 0
	
for line1 in file1: 
	wild_ref = 0
	wild_hetero = 0
	wild_alt = 0
	lr_ref = 0
	lr_hetero = 0 
	lr_alt = 0
# 	mex_ref = 0
# 	mex_hetero = 0 
# 	mex_alt = 0
	splt1 = line1.split("\t")
	ann = splt1[7].split("|")
	gene = splt1[7].split("gene:")[1][:19]
	ref = splt1[3]
	alt = splt1[4]
	pos = splt1[1]
	impact = ann[2]
	
	type1 = ann[1]
	if splt1[7].find(",") != -1:  
		type2 = splt1[7].split(",")[1].split("|")[1]
	else:
		type2 =''
	
	allele_list = []
	allele_list= splt1[9:13] + splt1[20:27] + splt1[28:31] + [splt1[32]] + splt1[38:40] + [splt1[42]] + [splt1[43]] + splt1[54:58] + splt1[59:63] + splt1[65:71] + splt1[72:80] + splt1[81:] + [splt1[33]] + [splt1[35]] + [splt1[37]]
	if gene in gene_list:
		for j in range_wd:
			if str(allele_list[j][0:3]) == "0/0":
				wild_ref += 1
			elif str(allele_list[j][0:3]) == "0/1":
				wild_hetero += 1
			elif str(allele_list[j][0:3]) == "1/1":
				wild_alt += 1
		for k in range_lr:
			if str(allele_list[k][0:3]) == "0/0":
				lr_ref += 1
			elif str(allele_list[k][0:3]) == "0/1":
				lr_hetero += 1
			elif str(allele_list[k][0:3]) == "1/1":
				lr_alt += 1
# 		for m in range_mex:
# 			if str(allele_list[m][0:3]) == "0/0":
# 				mex_ref += 1
# 			elif str(allele_list[m][0:3]) == "0/1":
# 				mex_hetero += 1
# 			elif str(allele_list[m][0:3]) == "1/1":
# 				mex_alt += 1
		file3.write(str(gene) + ";" + str(pos) + ";" + str(ref) + "/" + str(alt) + ";" + str(type1) + "/" + str(type2)+ ";" + str(impact) + "\t" + 
		str(wild_ref) + "\t" + str(wild_hetero) + "\t" + str(wild_alt) + "\t" + str(lr_ref) + "\t" + str(lr_hetero) + "\t" + str(lr_alt) + "\n")
# 		file3.write(str(gene) + ";" + str(pos) + ";" + str(ref) + "/" + str(alt) + ";" + str(type1) + "/" + str(type2)+ ";" + str(impact) + "\t" + 
# 		str(wild_ref) + "\t" + str(wild_hetero) + "\t" + str(wild_alt) + "\t" + str(lr_ref) + "\t" + str(lr_hetero) + "\t" + str(lr_alt) + "\t" + str(mex_ref) + "\t" + str(mex_hetero) + "\t" + str(mex_alt)+ "\n")
	
	allele_list = []


		
		
