import sys


Input = sys.argv[1] # failed ones list


infile = open(Input, "r")


for file in infile:
	split = file.split("_")
	chr = split[2]
	part = int(split[3])
	part2 = int(split[4].split(".")[0])
	part3 = int(split[5].split(".")[0])
	
	start = (part - 1) * 5000000 + 1 + (1000000 * part2) + (500000 * part3)
	for i in range(0,2):
		to_add = i * 250000
		start_new = start + to_add
		end = start_new + 249999
		file_name = "hapflk_VQSR_" + str(chr) + "_" + str(part) + "_" + str(part2) + "_" + str(part3) + "_" + str(i)+ ".sh"
		file = open(file_name, 'w')
		file.write("""#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hf""" + str(chr) + "_" + str(part) + "_" + str(part2) + "_" + str(part3) +"_" + str(i) +
"""\n#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_""" + str(chr) + "_" + str(part) + "_" + str(part2) + "_" + str(part3) + "_" + str(i) + ".err" +
"""\n#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=6:00:00
module load hapflk/1.4
hapflk --file """ + str(chr) + "_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr " + str(chr[-2:]) + " --from " + str(start_new) + " --to " + str(end) + " -p " + str(chr) + "_" + str(part) + "_" + str(part2) + "_" + str(part3) +"_" + str(i) + " --ncpu 4 -K 15")
	

