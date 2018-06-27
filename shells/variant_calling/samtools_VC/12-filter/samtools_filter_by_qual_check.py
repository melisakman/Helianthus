## this script is for keeping the highest quality site ona  samtools call

import sys

Input_vcf = sys.argv[1]
# Output_vcf = sys.argv[2]

input = open(Input_vcf, "r")
# output = open(Output_vcf, "w")

# qual_previous = 0
# line_to_write = ''
pos_previous = '1'
for line in input:
	split = line.split("\t")
	if split[0][0] == "#":
# 		output.write(line)
	else:
# 		qual = float(split[5])
		pos = split[1]
		if pos == pos_previous:
			print 1
# 			if qual > qual_previous:
# 				line_to_write = line
# 			else:
# 				pos_previous = pos
		else:
# 			output.write(line_to_write)			
			pos_previous = pos
# 			qual_previous = qual
# 			line_to_write = line
# output.write(line_to_write)
		
		