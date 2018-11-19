import sys

InputFile = sys.argv[1]
OutputFile = sys.argv[2]
file = open(InputFile, "r")
output = open(OutputFile, "w")

list = []
for line in file:
	split = line.split(" ")
	if split[0] == "Anzac_Pueblo":
		output.write(line)
	elif split[0] == "lr":
		output.write(line)
	else:
		list.insert(0, split[5:-1])
# 		list.insert(-1, split[-1][0])
		print list
		if "2" in list:
			continue
		elif "3" in list:
			continue
		elif "4" in list:
			output.write(line)
		else:
			continue
		list = []
		

