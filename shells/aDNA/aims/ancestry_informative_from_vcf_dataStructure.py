import math
import sys
InputFile1 = sys.argv[1] #vcf file
OutputFile1 = sys.argv[2]

file1 = open(InputFile1, "r")
file2 = open(OutputFile1, 'w')

sample_range= range(9,23) + range(24,34) + range(35,38) + [39] + [44] + [47] + [61] + [62] + [64]
wild = range(9,23) + [24] + [25]
landrace = range(26,34) + range(35,38) + [39] + [44] + [47] + [61] + [62] + [64]
sample_dict = {}
number = 0

variant_sites = []
for line1 in file1:
	splt1 = line1.split("\t")
	if splt1[0][0] != "#":
		chr = splt1[0][-2:]
		location = splt1[1]
		id = str(chr) + "_" + str(location)
		variant_sites.append(id)

file1 = open(InputFile1, "r")

for line1 in file1:
	splt1 = line1.split("\t")
	if splt1[0][0:2] == "##":
		continue
	elif splt1[0] == "#CHROM":
		for r in sample_range[:-1]:
			sample_dict.update({ r : [ [splt1[r]], [splt1[r]] ]})
		sample_dict.update({ sample_range[-1] : [ [splt1[-1][:-1]], [splt1[-1][:-1]] ]})
	else:
		for r in sample_range:
			sample_dict.get(r)[0].append(splt1[r][0])
			sample_dict.get(r)[1].append(splt1[r][2])
		
for n in variant_sites:
	file2.write(str(n) + "\t")
file2.write("\n")
		
for x in sample_range:
	list1 = sample_dict.get(x)[0]
	list2 = sample_dict.get(x)[1]
	file2.write(str(x) + "\t")
	if x in wild:
		file2.write("wild \t")
	elif x in landrace:
		file2.write("landrace \t")
	for l in list1:
		file2.write(str(l) + "\t")
	file2.write("\n")
	file2.write(str(x) + "\t")
	if x in wild:
		file2.write("wild \t")
	elif x in landrace:
		file2.write("landrace \t")
	for l in list2:
		file2.write(str(l) + "\t")
	if x <=63:
		file2.write("\n")
	


