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
ref_count = 0
other_count = 0
del_count = 0
for line2 in file2:
	split2 = line2.split("\t")
	if split2[0][0] == "#":
		continue
	else:
		pos2 = int(split2[1])
		ref2 = split2[3]
		alt2 = split2[4]	
		if pos2 in positions:
			if alt2 == ".":
				ref_count +=1
			else:
				if len(alt2) == 3:
					other_count +=1
					if alt2[0] =="*" or alt[2] =="*":
						del_count +=1
				elif len(alt2) == 5:
					other_count +=1
					if alt2[0] =="*" or alt[2] =="*" or alt[4] =="*":
						del_count +=1
				elif len(alt2) == 7:
					other_count +=1
					if alt2[0] =="*" or alt[2] =="*" or alt[4] =="*" or alt[6] =="*":
						del_count +=1
			list = positions[pos2]
			JS_ref = list[0]
			JS_alt = list[1]
			file_out.write(str(pos2) + "\t" + ref2 + "\t" + alt2 + "\tJS: " + JS_ref + "/" + JS_alt + "\n")
print ref_count
print other_count
print del_count