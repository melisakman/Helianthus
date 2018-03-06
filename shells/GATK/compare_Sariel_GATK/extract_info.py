import sys

InputFile1 = sys.argv[1] # vcf file

OutputFile1 = "allele_freq_overlap_VC_MA.txt" 

file1 = open(InputFile1, "r")
file2 = open(OutputFile1, 'w')

	
range_wd = range(50,53) + range(55,61) + range(62,70) + range(71,76)
range_lr = [9,10] + range(18,20) + range (21,26) + range(27,30) + range(31,34) + [36,47,49]
range_cv = range(11,18) + [34,35] + range(37,47) +[48]
	
for line1 in file1: 
	wild_ref = 0
	wild_hetero = 0
	wild_alt = 0
	lr_ref = 0
	lr_hetero = 0 
	lr_alt = 0
	cv_ref = 0
	cv_hetero = 0 
	cv_alt = 0

	splt1 = line1.split("\t")
	ref = splt1[3]
	alt = splt1[4]
	pos = splt1[1]
	chr = splt1[0]	
	allele_list = []
	allele_list= splt1[9:20] + splt1[21:26] + splt1[27:30] + splt1[31:53] + splt1[55:61] + splt1[62:70] + splt1[71:76]
	
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
	for m in range_cv:
		if str(allele_list[m][0:3]) == "0/0":
			cv_ref += 1
		elif str(allele_list[m][0:3]) == "0/1":
			cv_hetero += 1
		elif str(allele_list[m][0:3]) == "1/1":
			cv_alt += 1
	file2.write(str(chr) + ";" + str(pos) + ";" + str(ref) + "/" + str(alt) +  "\t" + 
	str(wild_ref) + "/" + str(wild_hetero) + "/" + str(wild_alt) + "\t" + str(lr_ref) + 
	"/" + str(lr_hetero) + "/" + str(lr_alt) + "\t" + str(cv_ref) + "/" + str(cv_hetero) + 
	"/" + str(cv_alt) + "\n")
	


		
		
