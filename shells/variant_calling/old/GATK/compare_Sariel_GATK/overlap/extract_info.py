import sys

InputFile1 = sys.argv[1] # vcf file

OutputFile1 = "allele_freq_nonoverlap_VCMA_properlyFiletered.txt" 

file1 = open(InputFile1, "r")
file2 = open(OutputFile1, 'w')

	
range_wd = range(38,60)
range_lr = [0,1] + range(9,22) + [24,35,37]
range_cv = range(2,9) + [22,23] + range(25,35) + [36]
	
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
	if splt1[0][0] == "#":
		continue
	else:
		ref = splt1[3]
		alt = splt1[4]
		pos = splt1[1]
		chr = splt1[0]	
		allele_list = []
		allele_list= splt1[9:20] + splt1[21:26] + splt1[27:30] + splt1[31:53] + splt1[55:61] + splt1[62:70] + splt1[71:76]
		for j in range_wd:	
			print j
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
	


		
		
