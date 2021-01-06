#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr09
#SBATCH --account=fc_blackman
#SBATCH --partition=savio
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr09_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr09_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools

# zcat samtools/samtools_invariant_chr09_dupsRemoved.vcf | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools/samtools_variants_chr09.vcf.gz
zcat freebayes/no_mnp/freebayes_invariant_chr09_combined.vcf.gz | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/no_mnp/freebayes_variants_chr09.vcf.gz


# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr09_GATK_SNP.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/no_mnp/freebayes_variants_chr09.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_variants_chr09.vcf.gz

bcftools isec -n +2 -O z -p ../bcftools_isec/chr09_2 gvcfs/genotyping/chr09_GATK_SNP.vcf.gz \
freebayes/no_mnp/freebayes_variants_chr09.vcf.gz \
samtools/samtools_variants_chr09.vcf.gz





