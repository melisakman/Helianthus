import sys

InputFile = sys.argv[1]

file = open(InputFile, "r")

for line in file:
	count = 0
	split_line = line.split("\t")
	for character in split_line:
		count +=1
	print count
		