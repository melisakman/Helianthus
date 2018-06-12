import sys

InputFile1 = sys.argv[1] # vcf file
InputFile2 = sys.argv[2] # gene name file

OutputFile1 = sys.argv[3]

file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")
file3 = open(OutputFile1, 'w')
file3.write("gene\tposition\tref\talt\ttype\twd_ref\tlr_ref\twd_mex_ref\twd_US_ref\tlr_mex_ref\tlr_US_ref\tethno_ref\twild_ref/wild_het/wild_alt\tlr_ref/lr_het/lr_alt\twild_mex_ref/wild_mex_het/wild_mex_alt\twild_US_ref/wild_US_het/wild_US_alt\tlr_mex_ref/lr_mex_het/lr_mex_alt\tlr_US_ref/lr_US_het/lr_US_alt\tethno_ref/ethno_het/ethno_alt\n")
gene_list = []

for i in file2:
	gene_list.append(i[0:-1])
	
range_lr_US = range(0,13)
range_lr_mex = range(13,18)
range_ethno = range(18,24)
range_wd_US = range(24,46)
range_wd_mex = range(46,49)
range_lr = range(0,24)
range_wd = range(24,49)

	
for line1 in file1: 
	wild_ref = 0
	wild_hetero = 0
	wild_alt = 0
	lr_ref = 0
	lr_hetero = 0 
	lr_alt = 0
	lr_mex_ref = 0
	lr_mex_hetero = 0 
	lr_mex_alt = 0
	lr_US_ref = 0
	lr_US_hetero = 0 
	lr_US_alt = 0
	ethno_ref = 0
	ethno_hetero = 0 
	ethno_alt = 0
	wd_mex_ref = 0
	wd_mex_hetero = 0 
	wd_mex_alt = 0
	wd_US_ref = 0
	wd_US_hetero = 0 
	wd_US_alt = 0

	splt1 = line1.split("\t")
	if splt1[0][0] == "#":
		continue
	else:
		if splt1[4] != ".":
			ann = splt1[7].split("|")
			gene = splt1[7].split("gene:")[1][:19]
			ref = splt1[3]
			alt = splt1[4]
			pos = splt1[1]
			
			if splt1[7].find("SIFTINFO") != -1:
				type = "SNPEff: " + ann[1] + "; " + ann[2] + "; " + ann[10] + "| SIFT: " + ann[20] + "; " + ann[26] + "; " + ann[27] 
			else:
				type = "SNPEff: " + ann[1] + "; " + ann[2] + "; " + ann[10] 
			allele_list = []
			allele_list= [splt1[9]] + [splt1[12]] + splt1[20:26] + splt1[38:40] + [splt1[43]] + [splt1[57]] + [splt1[59]] + [splt1[26]]+ splt1[28:31] + [splt1[32]] + splt1[10:12] + splt1[54:57] + [splt1[42]] + splt1[60:63] + splt1[65:71] + splt1[72:80] + splt1[81:86] + [splt1[33]] + [splt1[35]] + [splt1[37]]
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
				for m in range_lr_mex:
					if str(allele_list[m][0:3]) == "0/0":
						lr_mex_ref += 1
					elif str(allele_list[m][0:3]) == "0/1":
						lr_mex_hetero += 1
					elif str(allele_list[m][0:3]) == "1/1":
						lr_mex_alt += 1
				for n in range_wd_mex:
					if str(allele_list[n][0:3]) == "0/0":
						wd_mex_ref += 1
					elif str(allele_list[n][0:3]) == "0/1":
						wd_mex_hetero += 1
					elif str(allele_list[n][0:3]) == "1/1":
						wd_mex_alt += 1
				for a in range_ethno:
					if str(allele_list[a][0:3]) == "0/0":
						ethno_ref += 1
					elif str(allele_list[a][0:3]) == "0/1":
						ethno_hetero += 1
					elif str(allele_list[a][0:3]) == "1/1":
						ethno_alt += 1
				for b in range_wd_US:
					if str(allele_list[b][0:3]) == "0/0":
						wd_US_ref += 1
					elif str(allele_list[b][0:3]) == "0/1":
						wd_US_hetero += 1
					elif str(allele_list[b][0:3]) == "1/1":
						wd_US_alt += 1
				for c in range_lr_US:
					if str(allele_list[c][0:3]) == "0/0":
						lr_US_ref += 1
					elif str(allele_list[c][0:3]) == "0/1":
						lr_US_hetero += 1
					elif str(allele_list[c][0:3]) == "1/1":
						lr_US_alt += 1
				# calculate ref allele freq
				
				if wild_ref + wild_hetero + wild_alt != 0:
					wd_freq = ((2*float(wild_ref)) + wild_hetero)/ (2*(wild_ref + wild_hetero + wild_alt))
				else:
					wd_freq = "NA"
				if lr_ref + lr_hetero + lr_alt != 0:
					lr_freq = ((2*float(lr_ref)) + lr_hetero)/ (2*(lr_ref + lr_hetero + lr_alt))
				else: 
					lr_freq ="NA"
				if wd_mex_ref + wd_mex_hetero + wd_mex_alt != 0:	
					wd_mex_freq = ((2*float(wd_mex_ref)) + wd_mex_hetero)/ (2*(wd_mex_ref + wd_mex_hetero + wd_mex_alt))
				else: 
					wd_mex_freq = "NA"
				if wd_US_ref + wd_US_hetero + wd_US_alt != 0:
					wd_US_freq = ((2*float(wd_US_ref)) + wd_US_hetero)/ (2*(wd_US_ref + wd_US_hetero + wd_US_alt))
				else:
					wd_US_freq = "NA"
				if lr_US_ref + lr_US_hetero + lr_US_alt != 0:
					lr_US_freq = ((2*float(lr_US_ref)) + lr_US_hetero)/ (2*(lr_US_ref + lr_US_hetero + lr_US_alt))
				else:
					lr_US_freq = "NA"
				if lr_mex_ref + lr_mex_hetero + lr_mex_alt != 0:
					lr_mex_freq = ((2*float(lr_mex_ref)) + lr_mex_hetero)/ (2*(lr_mex_ref + lr_mex_hetero + lr_mex_alt))
				else:
					lr_mex_freq = "NA"
				if ethno_ref + ethno_hetero + ethno_alt != 0:
					ethno_freq = ((2*float(ethno_ref)) + ethno_hetero)/ (2*(ethno_ref + ethno_hetero + ethno_alt))
				else:
					ethno_freq = "NA"
				file3.write(str(gene) + ";" + str(pos) + ";" + str(ref) + "/" + str(alt) + ";" + str(type) + "\t" + 
				str(wd_freq) + "\t" + str(lr_freq) + "\t" + str(wd_mex_freq) + "\t" + str(wd_US_freq) + 
				"\t" + str(lr_mex_freq) + "\t" + str(lr_US_freq) + "\t" + str(ethno_freq) + "\t" + 
				str(wild_ref) + "\\" + str(wild_hetero) + "\\" + str(wild_alt) + "\t" +
				str(lr_ref) + "\\" + str(lr_hetero) + "\\" + str(lr_alt) + "\t" +
				str(wd_mex_ref) + "\\" + str(wd_mex_hetero) + "\\" + str(wd_mex_alt) + "\t" +
				str(wd_US_ref) + "\\" + str(wd_US_hetero) + "\\" + str(wd_US_alt) + "\t" +
				str(lr_mex_ref) + "\\" + str(lr_mex_hetero) + "\\" + str(lr_mex_alt) + "\t" +
				str(lr_US_ref) + "\\" + str(lr_US_hetero) + "\\" + str(lr_US_alt) + "\t" +
				str(ethno_ref) + "\\" + str(ethno_hetero) + "\\" + str(ethno_alt) + "\n") 
			
		else:
			continue


