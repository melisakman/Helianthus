import sys

InputFile1 = sys.argv[1] # sites file
InputFile2 = sys.argv[2] # vcf file

OutputFile = sys.argv[3] # name for output file

file1 = open(InputFile1, "r")
file2 = open(InputFile2, 'r')

file_out = open(OutputFile, 'w')

positions = {}

for line in file1:
	split1 = line.split("\t")
	pos = int(split1[1])
	ref = split1[2]
	alt = split1[3]
	category = split1[4][:-1]
	if category == "01":
		positions[pos] = [ref, alt]

for line2 in file2:
	split2 = line2.split("\t")
	if split2[0][0] == "#":
		continue
	else:
		pos2 = int(split2[1])
		ref2 = split2[3]
		alt2 = split2[4]	
		if pos2 in positions:
			file_out.write(str(pos) + "\t" + ref2 + "\t" + alt2 + "\tJS: " + positions[pos][0] + "/" + positions[pos][1] + "/n")