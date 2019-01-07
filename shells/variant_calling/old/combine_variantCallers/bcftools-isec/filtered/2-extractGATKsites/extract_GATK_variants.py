## This script uses a sites.txt file from bcftools isec to select variants from a single variant calling vcf file
import sys

InputFile1 = sys.argv[1] #vcf file
InputFile2 = sys.argv[2] #sites file
chr_no = sys.argv[4][-2:]

OutputFile = sys.argv[3] # name for output file

file1 = open(InputFile1, "r")
file2 = open(InputFile2, 'r')

file_out = open(OutputFile, 'w')

sites_dict = {}
sites_count = 0
vcf_count = 0
for line in file2:
	split = line.split("\t")
	chr = split[0][-2:]
	pos = split[1]
	type = split[4][:-1]
	alt = split[3]
	if chr_no == chr:
		if type == "110" or type == "101" or type == "011" or type == "111":
			sites_dict.update({pos:alt}) 
			sites_count +=1
		else:
			continue
	else:
		break
for line in file1:
	split = line.split("\t")
	if split[0][0] == "#":
		file_out.write(line)
		continue
	else:
		chr = split[0]
		pos = split[1]
		if pos in sites_dict:
			file_out.write(line)
			del sites_dict[pos]
			vcf_count +=1
		else:
			continue
print "sites count = " + str(sites_count)
print "vcf count = " + str(vcf_count)
for key in sites_dict:
	print key + "\t" + sites_dict[key]