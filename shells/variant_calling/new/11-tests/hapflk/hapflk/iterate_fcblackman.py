import sys

chr = sys.argv[1]
chr_length = int(sys.argv[2])
bins = int(chr_length/5000000) + 2

iterations = range(1,bins)

start = 1
end = 5000000

for i in iterations:
	file_name = "hapflk_VQSR_chr" + str(chr) + "_" + str(i) + ".sh"
	file = open(file_name, 'w')
	file.write("""#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr""" + str(chr) + "_" + str(i) + 
"""\n#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12 
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr""" + str(chr) + "_" + str(i) + ".err" +
"""\n#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=18:00:00
module load hapflk/1.4
hapflk --file chr""" + str(chr) + "_final_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr " + str(chr) + " --from " + str(start) + " --to " + str(end) + " -p chr" + str(chr) + "_" + str(i) + " --ncpu 11 -K 15")
	start += 5000000
	end += 5000000


