import sys

InputFile = sys.argv[1]
OutputFile = sys.argv[2]

file = open(InputFile, 'r')
out = open(OutputFile, 'w')
invariant_no = 0
variant_no =0
indel =0
invariant_no2 = 0
variant_no2 =0
indel2 =0
invariant_no3 = 0
variant_no3 =0
indel3 =0

for line in file:
	split = line.split("\t")
	if split[0][0] == "#":
		continue
	else:
		chr = split[0]
		site = int(split[1])
		ref = split[3]
		alt = split[4]
		if 10000 >= site >= 1:
			if alt == ".":
				invariant_no +=1
			else:
				if len(alt)>=2:
					alt_split = alt.split(",")
					if len(alt_split) > 1:
						if len(alt_split[0]) == 1 and len(alt_split[1]) == 1:
							variant_no +=1
						else:
							indel +=1
				else:
					variant_no +=1
		elif 20000 >= site >= 10001:
			if alt == ".":
				invariant_no2 +=1
			else:
				if len(alt)>=2:
					alt_split = alt.split(",")
					if len(alt_split) > 1:
						if len(alt_split[0]) == 1 and len(alt_split[1]) == 1:
							variant_no2 +=1
						else:
							indel2 +=1
				else:
					variant_no2 +=1
		elif 30000 >= site >= 20001:
			if alt == ".":
				invariant_no3 +=1
			else:
				if len(alt)>=2:
					alt_split = alt.split(",")
					if len(alt_split) > 1:
						if len(alt_split[0]) == 1 and len(alt_split[1]) == 1:
							variant_no3 +=1
						else:
							indel3 +=1
				else:
					variant_no3 +=1

		else:
			if site>30000:
				break
	
			
print invariant_no
print variant_no
print indel
print invariant_no2
print variant_no2
print indel2
print invariant_no3
print variant_no3
print indel3



# bin_size = 10000
# bin_start = 1
# bin_end = bin_size
# decimal = (len(str(bin_size)) -1)*-1
# invariant_no = 0
# variant_no =0
# out.write("chr\tbin_start\tbin_end\tinvariant_no\tvariant_no\n")
# for line in file:
# 	split = line.split("\t")
# 	if split[0][0] == "#":
# 		continue
# 	else:
# 		chr = split[0]
# 		site = int(split[1])
# 		ref = split[3]
# 		alt = split[4]
# 		if bin_end >= site >= bin_start:
# 			if alt == ".":
# 				invariant_no +=1
# 			else:
# 				variant_no +=1
# 		else:
# 			out.write(chr + "\t" + str(bin_start) + "\t" + str(bin_end) + "\t" + str(invariant_no) + "\t" + str(variant_no) + "\n")	
# 			invariant_no = 0
# 			variant_no = 0
# 			new_end = bin_end + bin_size
# 			new_start = bin_start + bin_size
# 			if new_end >= site >= new_start:
# 				if alt == ".":
# 					invariant_no +=1
# 				else:
# 					variant_no +=1
# 				bin_end = bin_end + bin_size
# 				bin_start = bin_start + bin_size
# 			else:
# 				bin_diff = str(site - bin_start)
# 				to_add = (int(bin_diff[:decimal])) * bin_size
# 				bin_start = bin_start + to_add
# 				bin_end = bin_end + to_add
# 				if alt == ".":
# 					invariant_no +=1
# 				else:
# 					variant_no +=1
# 								
# out.write(chr + "\t" + str(bin_start) + "\t" + str(bin_end) + "\t" + str(invariant_no) + "\t" + str(variant_no) + "\n")				
# 			
# # 10000
# # 241000
# # 
# # site = 55000
# # bin_start = 20000
# # bin_diff = str(site - bin_start)
# # to_add = (int(bin_diff[:decimal])) * bin_size
# # to_add