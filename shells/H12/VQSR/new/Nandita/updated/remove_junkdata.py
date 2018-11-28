import sys

InputFile1 = sys.argv[1] # modified file

OutputFile1 = sys.argv[2] # output file name group1

file1 = open(InputFile1, "r")
file2 = open(OutputFile1, "w")

for line in file1:
	dict = {}
	split = line.split(",")
	for i in range(1,len(split)):
		if i != len(split)-1:
			allele = split[i]
		else:
			allele = split[i][:-1]
		print allele
		if allele in dict:
			dict[allele] += 1
		else:
			dict[allele] = 1
		
	if "N" in dict:
		numberOfNs = dict["N"]
# 		print(numberOfNs)
		skip = False
		for key, value in dict.items():
			if key is "N":
				print("oytun0: ", value)
				continue	
			else:
# 				print(numberOfNs + value, (len(split)-1))
				if numberOfNs + value == (len(split)-1):
					print("oytun: ", value)
					skip = True
					break
		if skip:
			continue
		else:
			file2.write(line)
	else:
		skip = False
		for key, value in dict.items():
			if value == (len(split)-1):
				skip = True
				break
		if skip:
			continue
		else:
			file2.write(line)