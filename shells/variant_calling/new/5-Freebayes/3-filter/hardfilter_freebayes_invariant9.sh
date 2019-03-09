#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/freebayes/
#SBATCH -J FB_chr09
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_freebayes_chr09.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_freebayes_chr09.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

zcat freebayes_invariant_chr09_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_variants_chr09_filtered.vcf.gz
zcat freebayes_invariant_chr09_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL < 2.75e-15 && MQMR > 40' | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariants_chr09_filtered.vcf.gz

