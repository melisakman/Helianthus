import sys

chr = sys.argv[1]
chr_length = int(sys.argv[2])
bins = int(chr_length/5000000) + 2

iterations = range(1,bins)

start = 1
end = 5000000
file_name = "chr" + chr + "_hapflk.sh"
file = open(file_name, 'w')
file.write("""#!/bin/bash
#SBATCH -D /global/scratch/makman/GATK/final/hapflk/
#SBATCH -J hfchr""" + str(chr) + 
"""\n#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=160:00:00
#SBATCH -e /global/home/users/makman/H12/outs/hapflk_VQSR_chr""" + str(chr) + ".err" +
"""\n#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=72:00:00
module load hapflk/1.4
""")

for i in iterations:
	file.write("hapflk --file chr" + str(chr) + "_SNP_plink_lr_mex_ethno_fixed --miss_pheno 0 --chr " + str(chr) + " --from " + str(start) + " --to " + str(end) + " -p chr" + str(chr) + "_" + str(i) + " --ncpu 51 -K 15\n")
	start += 5000000
	end += 5000000


