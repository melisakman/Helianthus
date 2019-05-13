#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr06
#SBATCH --account=fc_blackman
#SBATCH --partition=savio
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr06_3.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr06_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools

# zcat gvcfs/genotyping/chr06_GATK_SNP_hardfiltered.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > gvcfs/genotyping/chr06_GATK_SNP_hardfiltered_secondfilter.vcf.gz

# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr06_GATK_SNP_hardfiltered_secondfilter.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/no_mnp/freebayes_variants_chr06_filtered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_variants_chr06_filtered.vcf.gz

bcftools isec -n =3 -O z -p ../bcftools_isec/chr06_3 gvcfs/genotyping/chr06_GATK_SNP_hardfiltered_secondfilter.vcf.gz \
freebayes/no_mnp/freebayes_variants_chr06_filtered.vcf.gz \
samtools/samtools_variants_chr06_filtered.vcf.gz
