import sys

InputFile1 = sys.argv[1] # vcf file
InputFile2 = sys.argv[2] # sample list 

OutputFile1 = sys.argv[3] # output file name group1

file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")
file3 = open(OutputFile1, 'w')

group_list = []
group_dict = {}
for line_1 in file2:
	group_list.append(line_1[:-1])

file3.write("position\tx\tn\tfolded\n")
for line in file1: 
	splt = line.split("\t")
	sample_no = len(splt)
	samples = range(9, sample_no)
	
	if splt[0][0:2] == "##":
		continue
	elif splt[0][0:2] == "#C":
		for x in samples:
			if x != sample_no:
				group_dict[x] = splt[x]
			elif x == sample_no:
				group_dict[x] = splt[x][:-1]
	else:
		chr = splt[0]
		pos = splt[1]
		ref = splt[3]
		alt = splt[4]
		ref_no = 0
		alt_no = 0
		alt2_no = 0
		missing_no = 0
		if len(alt.split(",")) == 1:
			for j in samples:
				if group_dict[j] in group_list:
					if splt[j][0] == ".":
						missing_no += 1
					else:
						allele1 = int(splt[j][0])
						allele2 = int(splt[j][2])
						
						if group_dict[j] in group_list:
							if allele1 == allele2 and allele1 == 0:
								ref_no +=2
							elif allele1 == allele2 and allele1 == 1:
								alt_no +=2
							elif allele1 != allele2 and allele1 == 0:
								ref_no +=1
								alt_no +=1
							elif allele1 != allele2 and allele1 == 1:
								alt_no +=2						
				else:
					continue
			alleles = ref_no + alt_no
			file3.write(str(pos) + "\t" + str(alt_no) + "\t" + str(alleles) + "\t1\n")
			if alt2_no >0:
				print str(pos) + " missing = " + str(missing_no) + " alt2 = " + str(alt2_no) 
										
					
			
