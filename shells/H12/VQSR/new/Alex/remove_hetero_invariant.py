import sys

InputFile = sys.argv[1]
OutputFile = sys.argv[2]
file = open(InputFile, "r")
output = open(OutputFile, "w")

list = []
for line in file:
	split = line.split("\n")[0].split(" ")
	if split[0] == "Anzac_Pueblo":
		output.write(line)
	elif split[0] == "lr":
		output.write(line)
	else:
		for i in range(5, 51):
			list.append(split[i])
			
		if "2" in list:
			list = []
			continue
		elif "3" in list:
			list = []
			continue
		elif "4" in list:
			list = []
			output.write(line)
			continue
		else:
			list = []
			continue
		

