import sys

InputFile = sys.argv[1]

file = open(InputFile, 'r')
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
					print line

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