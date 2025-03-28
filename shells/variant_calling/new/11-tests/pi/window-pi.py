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
NAN = False
for line in file_in:
	split = line.split("\t")
	if split[0] == "CHROM":
		continue
	else:
		pos_start = int(split[1])
		chr = split[0]	
		pi_curr = split[2][:-1]
		if first_line == True:
			first_line = False
			current_bin = pos_start + int(bin)
			diff = pos_start - current_bin
		if pi_curr == "-nan":
			print 1
			if pos_start > current_bin:
				if diff < int(bin):
					if NAN == False:
						file_out1.write(str(chr) + "\t" + str(current_bin) + "\t0" + "\t0" + "\tNA"  + "\n")
				else:
					times = int(diff)/int(bin) + 1
					for x in range(1,times):
						bin = current_bin + x*int(bin)
						file_out1.write(str(chr) + "\t" + str(bin) + "\t0" + "\t0" + "\tNA"  + "\n") 
							
			else:
				pass
		else:
			NAN = True
			pi = float(split[2])
			if pos_start <= current_bin:
				pi_sum += pi
				counter += 1
				if pi != 0:
					snp_no += 1
			
			else:
				NAN = False
				if counter != 0:
					if pi_sum == 0:
						file_out1.write(str(chr) + "\t" + str(current_bin) + "\t" + str(counter) + "\t" + str(snp_no) + "\t0"  + "\n")
						times = int(diff)/int(bin) + 1
						NAN = False
						for x in range(1,times):
							bin = current_bin + x*int(bin)
							file_out1.write(str(chr) + "\t" + str(bin) + "\t0" + "\t0" + "\tNA"  + "\n") 
							NAN = False
					else:
						pi_avg = float(pi_sum) / counter
						file_out1.write(str(chr) + "\t" + str(current_bin) + "\t" + str(counter) + "\t" + str(snp_no) + "\t" + str(pi_avg) + "\n")
						NAN = False
						times = int(diff)/int(bin) + 1
						for x in range(1,times):
							bin = current_bin + x*int(bin)
							file_out1.write(str(chr) + "\t" + str(bin) + "\t0" + "\t0" + "\tNA"  + "\n") 
							NAN = False
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