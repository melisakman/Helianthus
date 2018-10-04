file = open('chr01_final.vcf', 'r')

out = open('invariant_lowSNPintervals.txt', 'w')

chr_old = "HanXRQChr01"
bin_start = 1
bin_end = 10001
invariant_no
for line in file:
	split = line.split("\t")
	if split[0][0] == "#":
		continue
	else:
		chr = split[0]
		site = int(split[1])
		ref = split[3]
		alt = split[4]
		if chr == chr_old:
			if bin_end >= site >= bin_start:
				if alt == ".":
					invariant_no +=1
				else:
					continue
			else:
				out.write(chr + "\t" + (bin_start) + "\t" + str(bin_end) + "\t" + str(invariant_no) + "\n")	
				invariant_no = 0
				bin_start = bin_start + 10000
				bin_end = bin_end + 10000
				if alt == ".":
					invariant_no +=1
				else:
					continue
					
		else:
			out.write(chr + "\t" + (bin_start) + "\t" + str(bin_end) + "\t" + str(invariant_no) + "\n")	
			invariant_no = 0
			bin_start = bin_start + 10000
			bin_end = bin_end + 10000
			if alt == ".":
				invariant_no +=1
			else:
				continue
			
				
			



