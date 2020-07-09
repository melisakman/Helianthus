import sys
inputFile = sys.argv[1] # pi file as created by vcftools
bin = sys.argv[2] # bin length
outputFile1 = sys.argv[3] # output file name w/o NA

file_in = open(inputFile, "r")
file_out= open(outputFile, "w")

file_out.write("chr\tbin-end\tno_sites\tno_snp\tpi\n")
start = 0
allele_diff_total = 0
bin_no = 1
for line in file_in:
	split = line.split("\t")
	if split[0][0] == "c":
		continue
	elif split[10][0] =="z":
		continue
	else:
		chr_new = split[0]
		wild = int(split[4]) + int(split[5]) + int(split[6])
		lr = int(split[7]) + int(split[8]) + int(split[9])
		allele_diff = float(split[12])
		pos = int(split[1])
		bin_now = bin * bin_no
		if chr_new == chr:
			if start < pos < bin_now:
				count +=1
				allele_diff_total += allele_diff
			else:
				bin_no +=1
				ave_allele_freq = allele_diff_total / count
				file_out.write(chr_new + str(pos) + str(bin_now) + str(ave_allele_freq) + "\n")
				allele_diff_total = 0
				count = 0
				start = bin * bin_no
		else:			
			file_out.write(chr_new + str(pos) + str(bin_now) + str(ave_allele_freq) + "\n")
			bin_no = 1
			start = 0
			allele_diff_total = 0
			count = 0
		
			
			


















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