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
del_count = 0
for line2 in file2:
	split2 = line2.split("\t")
	if split2[0][0] == "#":
		continue
	else:
		pos2 = split2[1]
		ref2 = split2[3]
		alt2 = split2[4]	
		list = positions[int(pos2)]
		JS_ref = list[0]
		JS_alt = list[1]
		file_out.write(str(pos2) + "\t" + ref2 + "\t" + alt2 + "\tJS: " + JS_ref + "/" + JS_alt + "\n")
		if pos2 in positions:
			if alt2 == ".":
				ref_count +=1
			else:
				if len(JS_alt) == 3:
					if JS_alt[0] =="*" or JS_alt[2] =="*":
						del_count +=1
					else:
						other_count +=1
				elif len(JS_alt) == 5:
					
					if JS_alt[0] =="*" or JS_alt[2] =="*" or JS_alt[4] =="*":
						del_count +=1
					else:
						other_count +=1
				elif len(JS_alt) == 7:

					if JS_alt[0] =="*" or JS_alt[2] =="*" or JS_alt[4] =="*" or JS_alt[6] =="*":
						del_count +=1
					else:
						other_count +=1
			
print ref_count
print other_count
print del_count