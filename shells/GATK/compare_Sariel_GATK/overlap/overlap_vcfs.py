import sys

InputFile1 = sys.argv[1] # variant calling 1
InputFile2 = sys.argv[2] # variant calling 2

OutputFile1 = "overlapping_variants_file1.vcf" 
OutputFile2 = "overlapping_variants_file2.vcf" 
OutputFile3 = "non_overlapping_variants_from_XX.vcf"

file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")
file3 = open(OutputFile1, 'w')
file4 = open(OutputFile2, 'w')
file5 = open(OutputFile3, 'w')

count = 0

file2_lines = file2.readlines()

for line1 in file1:
	found = 0
	split1= line1.split("\t")
	if split1[0][0] == "#":
		continue
	elif split1[0] == "#CHROM":
		file3.write(line1)
	else:
		chr1 = str(split1[0])
		pos1 = int(split1[1])
		print "processing SNP on " + str(chr1) + " " + str(pos1) 
	file2.seek(0)
	for line2 in file2_lines[count:]:
		split2 = line2.split("\t")
		if split2[0][0] == "#":
			if count < 1636:
				count += 1
				continue
			else:
			 	continue
		elif split2[0] == "#CHROM":
			if count < 1636:
				count += 1
				continue
			else:
			 	continue
		else:
			chr2 = str(split2[0])
			pos2 = int(split2[1])
			if chr1 ==chr2:
				if pos1 > pos2:
					count += 1
					continue
				elif pos1 == pos2:
					file3.write(line1)
					file4.write(line2)
					count += 1
					found = 1
					break
				else:
					break		
					found = 0
			else:
				if int(chr1[10:]) < int(chr2[10:]):
					break
				else:
					count +=1
	if found == 0:
		file5.write(line1)	
			
			