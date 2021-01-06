import sys

InputFile1 = sys.argv[1] # map file
InputFile2 = sys.argv[2] # site frequency file
OutputFile1 = sys.argv[3] # output file name group1

input1 = open(InputFile1, "r")
input2 = open(InputFile2, "r")

output = open(OutputFile1, 'w')
output.write("position\tcM")
dict = {}
for line1 in input1:
	split1 = line1.split("\t")
	dict[split1[0]] = split1[1][:-1]
print "dict done"

for line2 in input2:
	split2 = line2.split("\t")
	pos = split2[0]
	if pos in dict:
		output.write(str(pos) + "\t" + dict[pos] + "\n") 