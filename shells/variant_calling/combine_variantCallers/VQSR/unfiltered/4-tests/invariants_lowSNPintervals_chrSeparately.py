import sys

InputFile = sys.argv[1]
OutputFile = sys.argv[2]

file = open(InputFile, 'r')
out = open(OutputFile, 'w')

bin_start = 1
bin_end = 10000
invariant_no = 0
variant_no =0
out.write("chr\tbin_start\tbin_end\tinvariant_no\tvariant_no\n")
for line in file:
	split = line.split("\t")
	if split[0][0] == "#":
		continue
	else:
		chr = split[0]
		site = int(split[1])
		ref = split[3]
		alt = split[4]
		if bin_end >= site >= bin_start:
			if alt == ".":
				invariant_no +=1
			else:
				variant_no +=1
		else:
			out.write(chr + "\t" + str(bin_start) + "\t" + str(bin_end) + "\t" + str(invariant_no) + "\t" + str(variant_no) + "\n")	
			invariant_no = 0
			variant_no = 0
			new_end = bin_end + 10000
			new_start = bin_start + 10000
			if new_end >= site >= new_start:
				if alt == ".":
					invariant_no +=1
				else:
					variant_no +=1
				bin_end = bin_end + 10000
				bin_start = bin_start + 10000
			else:
				bin_diff = str(site - bin_start)
				to_add = int(bin_diff[:-4]) * 10000
				bin_start = bin_start + to_add
				bin_end = bin_end + to_add
				if alt == ".":
					invariant_no +=1
				else:
					variant_no +=1
								
out.write(chr + "\t" + str(bin_start) + "\t" + str(bin_end) + "\t" + str(invariant_no) + "\t" + str(variant_no) + "\n")				
			
