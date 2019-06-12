import sys

InputFile1 = sys.argv[1] #sites file
InputFile2 = sys.argv[2] #vcf file

OutputFile1 = "JS_VQSR.vcf" # name for output file 1
OutputFile2 = "JS_GATK_VQSR.vcf" # name for output file 2
OutputFile3 = "MA_VQSR.vcf" # name for output file 3
OutputFile4 = "JS_noVQSR.vcf" # name for output file 4
OutputFile5 = "MA_noVQSR.vcf" # name for output file 5

file1 = open(InputFile1, "r")
file2 = open(InputFile2, 'r')

out1 = open(OutputFile1, 'w')
out2 = open(OutputFile2, 'w')
out3 = open(OutputFile3, 'w')
out4 = open(OutputFile4, 'w')
out5 = open(OutputFile5, 'w')

list1 = []
list2 = []
list3 = []
list4 = []
list5 = []

for line1 in file1:
	split1 = line1.split("\t")
	group = split1[5]
	pos = split1[2]
	if group == "0111" or group == "0011":
		list1.append(pos)
	elif group == "1111":
		list2.append(pos)
	elif group == "1110" or group == "1100":
		list3.append(pos)	
	elif group == "0101" or group == "0001":
		list4.append(pos)
	elif group == "0100":
		list5.append(pos)

for line2 in file2:
	split2 = line2.split("\t")
	pos2 = split2[2]
	if split2[0][0] == "#":
		out1.write(line2)
		out2.write(line2)
		out3.write(line2)
		out4.write(line2)
		out5.write(line2)
	else:
		if pos2 in list1:
			out1.write(line2)
		elif pos2 in list2:
			out2.write(line2)
		elif pos2 in list3:
			out3.write(line2)
		elif pos2 in list4:
			out4.write(line2)
		elif pos2 in list5:
			out5.write(line2)
	
	
# 1 MA VQSR
# 2 MA
# 3 JS VQSR
# 4 JS
# 
# 234, 34
# 
# all 4
# 
# 123, 12
# 
# 24,4
# 
# 2
# 

	