##This script compares the truth SNP calling set from Greg Owens and VCMA
## by using sites file created by bcftools isec

import sys

InputFile1 = sys.argv[1] # Greg's truth set (for a single chromosome)
InputFile2 = sys.argv[2] # vcf file
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
all_concord = 0
all_nonconcord = 0
for line2 in file2:
	split2 = line2.split("\t")
	pos2 = split2[1]
	alt2 = split2[4]
	qual = split2[5]
	if pos2 in truth:
		all +=1
		if truth[pos2] == alt2:
			all_concord +=1
# 			print "all3_concord " + line2
			concordant.append(pos2 + "\t" + truth[pos2] + "\t" alt2)
		else:
			all_nonconcord +=1
# 			print "all3_nonconcord " + line2
			discordant.append(pos2 + "\t" + truth[pos2] + "\t" alt2)


print "concordant ref and alt = " + str(all3_concord) + " non-concordant = " + str(all3_nonconcord)	+ " total = " + str(all)		
file3.write("concordant sites\n")
for item in concordant:
  file3.write("%s\n" % item)
  
file3.write("discordant sites\n")
for item in discordant:
  file3.write("%s\n" % item)