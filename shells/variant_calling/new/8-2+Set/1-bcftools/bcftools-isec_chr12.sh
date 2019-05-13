#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr12
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr12_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr12_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools

# zcat samtools/samtools_invariant_chr12_dupsRemoved.vcf | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools/samtools_variants_chr12.vcf.gz
zcat freebayes/no_mnp/freebayes_invariant_chr12_combined.vcf.gz | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/no_mnp/freebayes_variants_chr12.vcf.gz


# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr12_GATK_SNP.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/no_mnp/freebayes_variants_chr12.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_variants_chr12.vcf.gz

bcftools isec -n +2 -O z -p ../bcftools_isec/chr12_2 gvcfs/genotyping/chr12_GATK_SNP.vcf.gz \
freebayes/no_mnp/freebayes_variants_chr12.vcf.gz \
samtools/samtools_variants_chr12.vcf.gz





