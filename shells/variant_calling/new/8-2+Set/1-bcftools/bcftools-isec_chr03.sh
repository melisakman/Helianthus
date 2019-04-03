#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr03
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr03_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr03_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools

zcat samtools/samtools_invariant_chr03_dupsRemoved.vcf | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools/samtools_variants_chr03.vcf.gz
zcat freebayes/freebayes_invariant_chr03_combined.vcf.gz | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/freebayes_variants_chr03.vcf.gz


/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr03_GATK_SNP.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/freebayes_variants_chr03.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_variants_chr03.vcf.gz

bcftools isec -n +2 -O z -p ../bcftools_isec/chr03_2 gvcfs/genotyping/chr03_GATK_SNP.vcf.gz \
freebayes/freebayes_variants_chr03.vcf.gz \
samtools/samtools_variants_chr03.vcf.gz





