#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr08
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr08_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr08_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools

zcat samtools/samtools_invariant_chr08_dupsRemoved.vcf | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools/samtools_variants_chr08.vcf.gz
zcat freebayes/freebayes_invariant_chr08_combined.vcf.gz | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/freebayes_variants_chr08.vcf.gz


/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr08_GATK_SNP.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/freebayes_variants_chr08.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_variants_chr08.vcf.gz

bcftools isec -n +2 -O z -p ../bcftools_isec/chr08_2 gvcfs/genotyping/chr08_GATK_SNP.vcf.gz \
freebayes/freebayes_variants_chr08.vcf.gz \
samtools/samtools_variants_chr08.vcf.gz




