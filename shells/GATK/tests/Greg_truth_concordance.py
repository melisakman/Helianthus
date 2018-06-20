##This script compares the truth SNP calling set from Greg Owens and VCMA
## by using sites file created by bcftools isec

import sys

InputFile1 = sys.argv[1] # Greg's truth set (for a single chromosome)
InputFile2 = sys.argv[2] # sites file

file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")

truth = {}

for line1 in file1:
	split1 = line1.split("\t")
	pos1 = split1[1]
	alt1 = split[3]
	truth[pos1] = alt1
all3_concord = 0
all3_nonconcord = 0
12_concord = 0
12_nonconcord = 0
13_concord = 0
13_nonconcord = 0
23_concord = 0
23_nonconcord = 0
for line2 in file2:
	split2 = line2.split["\t"]:
	pos2 = split2[1]
	alt2 = split[3]
	type = split[4]
	if pos2 in truth:
		if type == "111":
			if truth(pos2) = alt2:
				all3_concord +=1
			else:
				all3_nonconcord +=1
		elif type == "110":
			if truth(pos2) = alt2:
				12_concord +=1
			else:
				12_nonconcord +=1
		elif type == "101":
			if truth(pos2) = alt2:
				13_concord +=1
			else:
				13_nonconcord +=1
		elif type == "011":
			if truth(pos2) = alt2:
				23_concord +=1
			else:
				23_nonconcord +=1

print "all 3 concordant ref and alt = " + str(all3_concord) + " all 3 non-concordant = " + str(all3_nonconcord)				
print "GATK FB concordant ref and alt = " + str(12_concord) + " GATK FB non-concordant = " + str(12_nonconcord)				
print "GATK ST concordant ref and alt = " + str(13_concord) + " GATK ST non-concordant = " + str(13_nonconcord)				
print "FB ST concordant ref and alt = " + str(23_concord) + " FB ST non-concordant = " + str(23_nonconcord)				
