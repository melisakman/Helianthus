import sys

InputFile = sys.argv[1]
OutputFile = sys.argv[2]

file = open(InputFile, 'r')
out = open(OutputFile, 'w')

bin_start = 1
bin_end = 501
invariant_no = 0
variant_no =0
out.write("chr\tbin_start\tbin_end\tinvariant_no\tvariant_no")
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
			bin_start = bin_start + 500
			bin_end = bin_end + 500
			if alt == ".":
				invariant_no +=1
			else:
				variant_no +=1
								
out.write(chr + "\t" + str(bin_start) + "\t" + str(bin_end) + "\t" + str(invariant_no) + "\t" + str(variant_no) + "\n")				
			



