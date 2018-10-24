import sys

InputFile = sys.argv[1]

file = open(InputFile, 'r')
site_no = 0
for line in file:
	split = line.split("\t")
	if split[0][0] == "#":
		continue
	else:
		site = int(split[1])
		if 30000 >= site >= 20001:
			site_no +=1
		else:
			if site <30000:
				continue
			else:
				break
print site_no			
			
			
			
# SNPs 131, 155
# indels 82, 75