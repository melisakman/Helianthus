import sys

InputFile1 = sys.argv[1] 

OutputFile1 = sys.argv[2]

file1 = open(InputFile1, "r")
file2 = open(OutputFile1, 'w')

pos_previous = ""
count = 0
for line1 in file1:
	split1= line1.split("\t")
	if split1[0][0] == "#":
		file2.write(line1)
	elif split1[0] == "#CHROM":
		file2.write(line1)
	else:
		chr = str(split1[0])
		pos = int(split1[1])
		if pos_previous == pos:
			count +=1
			continue
		else:
			file2.write(line1)
		pos_previous = pos
print "number of duplicates found and filtered = " + str(count)