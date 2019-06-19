# This script is created for calculating pi including invariant sites a window defined by user. 
# The input is the pi as computed by vcftools site-pi.
import sys
inputFile = sys.argv[1] # pi file as created by vcftools
bin = sys.argv[2] # bin length
outputFile1 = sys.argv[3] # output file name w/o NA
outputFile2 = sys.argv[4] # output file name w NA

file_in = open(inputFile, "r")
file_out1= open(outputFile1, "w")
file_out2= open(outputFile2, "w")

file_out1.write("chr\tbin-end\tno_sites\tno_snp\tpi\n")
file_out2.write("chr\tbin-end\tno_sites\tno_snp\tpi\n")

pi_sum = 0
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
		pi_curr = split[2][:-1]
		current_bin = pos_start + int(bin)
		if pi_curr == "-nan":
			pass
		else:
			pi = float(split[2])
			if first_line == True:
				first_line = False
				
		
			if pos_start <= current_bin:
				pi_sum += pi
				counter += 1
				if pi != 0:
					snp_no += 1
			
			else:
				if counter != 0:
					if pi_sum == 0:
						file_out1.write(str(chr) + "\t" + str(current_bin) + "\t" + str(counter) + "\t" + str(snp_no) + "\t0"  + "\n")
					else:
						pi_avg = float(pi_sum) / counter
						file_out1.write(str(chr) + "\t" + str(current_bin) + "\t" + str(counter) + "\t" + str(snp_no) + "\t" + str(pi_avg) + "\n")
				else:
					pi_avg = "NA"
					file_out2.write(str(chr) + "\t" + str(current_bin) + "\t" + str(counter) + "\t" + str(snp_no) + "\t" + str(pi_avg) + "\n")

				counter = 0
				pi_sum = 0
				current_bin += int(bin)
				snp_no = 0
if counter >= 0:
	if pi_sum == 0:
		file_out1.write(str(chr) + "\t" + str(current_bin) + "\t" + str(counter) + "\t" + str(snp_no) + "\t0"  + "\n")
	else:
		pi_avg = float(pi_sum) / counter
		file_out1.write(str(chr) + "\t" + str(current_bin) + "\t" + str(counter) + "\t" + str(snp_no) + "\t" + str(pi_avg) + "\n")