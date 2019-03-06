#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined
#SBATCH -J FB_chr16
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_freebayes_chr16.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_freebayes_chr16.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

zcat freebayes_invariant_chr16_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20 && MQM > 40 || TYPE = "indel" && QUAL > 20 || TYPE = "mnp" && QUAL > 20 && MQM > 40 || TYPE = "ref" && QUAL < 2.723e-15 && MQMR > 40' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr16_allFiltered.vcf.gz
