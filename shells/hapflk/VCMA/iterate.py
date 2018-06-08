import sys

chr = sys.argv[1]
chr_length = int(sys.argv[2])
bins = int(chr_length/20000000) + 2

iterations = range(1,bins)

start = 1
end = 20000000

for i in iterations:
	file_name = "hapflk_invariant_chr" + str(chr) + "_" + str(i) + ".sh"
	file = open(file_name, 'w')
	file.write("""#!/bin/bash
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J flk_""" + str(chr) + "_" + str(i) + """\n#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=64000
#SBATCH -o /global/home/users/makman/GATK/outs/hapflk_sed_chr""" + str(chr) + "_" + str(i) + "_variantOnly.out" +
"""\n#SBATCH -e /global/home/users/makman/GATK/outs/hapflk_sed_chr""" + str(chr) + "_" + str(i) + "_variantOnly.err" +
"""\n#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --time=800:00:00
module load hapflk/1.4
hapflk --file chr""" + str(chr) + "_intersect_variantOnly_modified --miss_pheno 0 --chr " + str(chr) + " --from " + str(start) + " --to " + str(end) + " -p chr" + str(chr) + "_" + str(i) + " --ncpu 16 -K 15")
	start += 20000000
	end += 20000000

