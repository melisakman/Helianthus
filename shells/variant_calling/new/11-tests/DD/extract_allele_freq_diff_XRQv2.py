import sys

InputFile1 = sys.argv[1] # vcf file

OutputFile1 = sys.argv[2]

file1 = open(InputFile1, "r")
file3 = open(OutputFile1, 'w')
file3.write("chr\tpos\tref\talt\twild_ref\twild_hetero\t_wild_alt\tlr_ref\t_lr_hetero\tlr_alt\tallele_freq_wd\tallele_freq_lr\tdiff\tabs_diff\n")
range_lr = range(0,24)
range_wd = range(0,28)
wild_ref = 0
wild_hetero = 0
wild_alt = 0
lr_ref = 0
lr_hetero = 0 
lr_alt = 0

for line1 in file1: 
	wild_ref = 0
	wild_hetero = 0
	wild_alt = 0
	lr_ref = 0
	lr_hetero = 0 
	lr_alt = 0
	splt1 = line1.split("\t")
	if splt1[0][0] == "#":
		continue
	else:
		ref = splt1[3]
		alt = splt1[4]
		chr = splt1[0]
		pos = splt1[1]
		allele_list_lr = splt1[9:13] + splt1[25:30] + splt1[31:35] + splt1[36:39] + splt1[40:43] + splt1[56:61]   
		allele_list_wd = splt1[61:64] + splt1[66:73] + splt1[74:87] + splt1[88:93]
		for j in range_wd:
			if str(allele_list_wd[j][0:3]) == "0/0" or str(allele_list_wd[j][0:3]) == "0|0":
				wild_ref += 1
			elif str(allele_list_wd[j][0:3]) == "0/1" or str(allele_list_wd[j][0:3]) == "0|1":
				wild_hetero += 1
			elif str(allele_list_wd[j][0:3]) == "1/1" or str(allele_list_wd[j][0:3]) == "1|1":
				wild_alt += 1
		for k in range_lr:
			if str(allele_list_lr[k][0:3]) == "0/0" or str(allele_list_lr[k][0:3]) == "0|0":
				lr_ref += 1
			elif str(allele_list_lr[k][0:3]) == "0/1" or str(allele_list_lr[k][0:3]) == "0|1":
				lr_hetero += 1
			elif str(allele_list_lr[k][0:3]) == "1/1" or str(allele_list_lr[k][0:3]) == "1|1":
				lr_alt += 1
		if wild_ref + wild_hetero + wild_alt == 0:
			file3.write(str(chr) + "\t" + str(pos) + "\t" + str(ref) + "\t" + str(alt) + "\t" +
			str(wild_ref) + "\t" + str(wild_hetero) + "\t" + str(wild_alt) + "\t" + str(lr_ref) + 
			"\t" + str(lr_hetero) + "\t" + str(lr_alt) + "\tzero wild")
		elif lr_ref + lr_hetero + lr_alt == 0:
			file3.write(str(chr) + "\t" + str(pos) + "\t" + str(ref) + "\t" + str(alt) + "\t" +
			str(wild_ref) + "\t" + str(wild_hetero) + "\t" + str(wild_alt) + "\t" + str(lr_ref) + 
			"\t" + str(lr_hetero) + "\t" + str(lr_alt) + "\tzero lr")
		else:		
			ref_allele_freq_wd = float(2*wild_ref + wild_hetero)/float(2*(wild_ref + wild_hetero + wild_alt))
			ref_allele_freq_lr = float(2*lr_ref + lr_hetero)/float(2*(lr_ref + lr_hetero + lr_alt))
			diff = ref_allele_freq_lr - ref_allele_freq_wd
			file3.write(str(chr) + "\t" + str(pos) + "\t" + str(ref) + "\t" + str(alt) + "\t" +
			str(wild_ref) + "\t" + str(wild_hetero) + "\t" + str(wild_alt) + "\t" + str(lr_ref) + 
			"\t" + str(lr_hetero) + "\t" + str(lr_alt) + "\t" + str(ref_allele_freq_wd) + "\t" + 
			str(ref_allele_freq_lr) + "\t" + str(diff) + "\t" + str(abs(diff)) + "\n")
	
	allele_list = []


		
		
