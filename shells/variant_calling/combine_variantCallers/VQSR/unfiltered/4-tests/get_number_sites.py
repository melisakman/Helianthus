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
		if 10000 >= site >= 1:
			site_no +=1
			
		else:
			if site <10000:
				continue
			else:
				break
print site_no			
			
			
			
# SNPs 131, 155, 184, 0, 41
# indels 82, 75, 63, 6, 43

