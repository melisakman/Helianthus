# This script is created for calculating fst including invariant sites a window defined by user. 
# The input is the fst as computed by vcftools site-fst.
import sys
inputFile = sys.argv[1] # fst file as created by vcftools
bin = sys.argv[2] # bin length
outputFile1 = sys.argv[3] # output file name w/o NA
outputFile2 = sys.argv[4] # output file name w NA

file_in = open(inputFile, "r")
file_out1= open(outputFile1, "w")
file_out2= open(outputFile2, "w")

file_out1.write("chr\tbin-end\tno_sites\tno_snp\tfst\n")
file_out2.write("chr\tbin-end\tno_sites\tno_snp\tfst\n")

fst_sum = 0
bin_start = 0
current_bin = int(bin)
counter = 0;
first_line = True;
snp_no = 0
for line in file_in:
	split = line.split("\t")
	if split[0] == "CHROM":
		continue
	else:
		pos_start = int(split[1])
		chr = split[0]		
		fst = float(split[5])
		if first_line == True:
			first_line = False
			current_bin = pos_start + int(bin)
		
		if pos_start <= current_bin:
			fst_sum += fst
			counter += 1
			if fst != 0:
				snp_no += 1
			
		else:
			if counter != 0:
				fst_avg = float(fst_sum) / counter
				file_out1.write(str(chr) + "\t" + str(current_bin) + "\t" + str(counter) + "\t" + str(snp_no) + "\t" + str(fst_avg) + "\n")
			else:
				fst_avg = "NA"
				file_out2.write(str(chr) + "\t" + str(current_bin) + "\t" + str(counter) + "\t" + str(snp_no) + "\t" + str(fst_avg) + "\n")

			counter = 0
			fst_sum = 0
			current_bin += int(bin)
			snp_no = 0
if counter >= 0:
	fst_avg = float(fst_sum) / counter		
	file_out1.write(str(chr) + "\t" + str(current_bin) + "\t" + str(counter) + "\t" + str(snp_no) + "\t" + str(fst_avg) + "\n")