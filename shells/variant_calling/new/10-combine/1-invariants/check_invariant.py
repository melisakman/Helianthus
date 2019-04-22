InputFile1 = "VCMA_chr13_NO_VARIATION_hardfiltered.vcf.gz" # your gtf here

file = open(InputFile1, "r")

for line in file:
	split = line.split("\t")
	if split[0][0] == "#":
		continue
	else:
		ref = split[3]
		alt = split[4]
		if alt == ".":
			print line
