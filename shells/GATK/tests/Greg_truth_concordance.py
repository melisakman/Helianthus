##This script compares the truth SNP calling set from Greg Owens and VCMA
## by using sites file created by bcftools isec

import sys

InputFile1 = sys.argv[1] # Greg's truth set (for a single chromosome)
InputFile2 = sys.argv[2] # sites file
OutputFile1 =sys.argv[3] #discordant sites, false negatives
file1 = open(InputFile1, "r")
file2 = open(InputFile2, "r")
file3 = open(OutputFile1, "w")

truth = {}
concordant = []
discordant = []
for line1 in file1:
	split1 = line1.split("\t")
	pos1 = split1[1]
	alt1 = split1[3][:-1]
	truth[pos1] = alt1
all = 0
all3_concord = 0
all3_nonconcord = 0
all12 = 0
all12_concord = 0
all12_nonconcord = 0
all13 = 0
all13_concord = 0
all13_nonconcord = 0
all23 = 0
all23_concord = 0
all23_nonconcord = 0
not_found = 0
for line2 in file2:
	split2 = line2.split("\t")
	print split2[1]
	pos2 = split2[1]
	alt2 = split2[3]
	type = split2[4][:-1]
	if pos2 in truth:
		if type == "111":
			all +=1
			if truth[pos2] == alt2:
				all3_concord +=1
# 				print "all3_concord " + line2
				concordant.append(pos2)
			else:
				all3_nonconcord +=1
# 				print "all3_nonconcord " + line2
				discordant.append(pos2)

		elif type == "110":
			all12 +=1
			if truth[pos2] == alt2:
				all12_concord +=1
				concordant.append(pos2)
			else:
				all12_nonconcord +=1
				discordant.append(pos2)
		elif type == "101":
			all13 +=1
			if truth[pos2] == alt2:
				all13_concord +=1
				concordant.append(pos2)
			else:
				all13_nonconcord +=1
				discordant.append(pos2)
		elif type == "011":
			all23 +=1
			if truth[pos2] == alt2:
				all23_concord +=1
				concordant.append(pos2)
			else:
				all23_nonconcord +=1
				discordant.append(pos2)

print "all 3 concordant ref and alt = " + str(all3_concord) + " all 3 non-concordant = " + str(all3_nonconcord)	+ " total = " + str(all)			
print "GATK FB concordant ref and alt = " + str(all12_concord) + " GATK FB non-concordant = " + str(all12_nonconcord) + " total = " + str(all12)		
print "GATK ST concordant ref and alt = " + str(all13_concord) + " GATK ST non-concordant = " + str(all13_nonconcord) + " total = " + str(all13)				
print "FB ST concordant ref and alt = " + str(all23_concord) + " FB ST non-concordant = " + str(all23_nonconcord) + " total = " + str(all23)				
print "not found = " + str(not_found)
file3.write("concordant sites\n")
for item in concordant:
  file3.write("%s\n" % item)
  
file3.write("discordant sites\n")
for item in discordant:
  file3.write("%s\n" % item)