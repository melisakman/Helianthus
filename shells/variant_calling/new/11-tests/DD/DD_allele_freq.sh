#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final
#SBATCH -J DD
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/DD_allele_freq.out
#SBATCH -e /global/home/users/makman/vcftools/outs/DD_allele_freq.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load python/2.7
python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr01_final.vcf.gz allele_freq_diff_chr01.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr02_final.vcf.gz allele_freq_diff_chr02.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr03_final.vcf.gz allele_freq_diff_chr03.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr04_final.vcf.gz allele_freq_diff_chr04.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr05_final.vcf.gz allele_freq_diff_chr05.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr06_final.vcf.gz allele_freq_diff_chr06.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr07_final.vcf.gz allele_freq_diff_chr07.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr08_final.vcf.gz allele_freq_diff_chr08.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr09_final.vcf.gz allele_freq_diff_chr09.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr10_final.vcf.gz allele_freq_diff_chr10.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr11_final.vcf.gz allele_freq_diff_chr11.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr12_final.vcf.gz allele_freq_diff_chr12.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr13_final.vcf.gz allele_freq_diff_chr13.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr14_final.vcf.gz allele_freq_diff_chr14.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr15_final.vcf.gz allele_freq_diff_chr15.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr16_final.vcf.gz allele_freq_diff_chr16.txt
# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/11-tests/DD/extract_allele_freq_diff_XRQv2.py chr17_final.vcf.gz allele_freq_diff_chr17.txt
