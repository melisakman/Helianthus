#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr01
#SBATCH --account=fc_blackman
#SBATCH --partition=savio
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr01_FB.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr01_FB.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools

# cat freebayes/no_mnp/freebayes_invariant_chr01_chunk4.vcf | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/no_mnp/freebayes_variants_chr01_chunk4_snps.vcf.gz
# zcat freebayes/freebayes_invariant_chr01_chunk4.vcf.gz | bcftools filter -i 'TYPE = "snp"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/freebayes_variants_chr01_chunk4_snps.vcf.gz 
bcftools view gvcfs/genotyping/chr01_GATK_SNP.vcf.gz -r HanXRQChr01:12000001-16000000 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > gvcfs/genotyping/chr01_GATK_chunk4_snps.vcf.gz 

# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/no_mnp/freebayes_variants_chr01_chunk4_snps.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/freebayes_variants_chr01_chunk4_snps.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr01_GATK_chunk4_snps.vcf.gz


bcftools isec -n +1 -O z -p ../bcftools_isec/chr01_chunk4_freebayes_gatk gvcfs/genotyping/chr01_GATK_chunk4_snps.vcf.gz \
freebayes/no_mnp/freebayes_variants_chr01_chunk4_snps.vcf.gz \
freebayes/freebayes_variants_chr01_chunk4_snps.vcf.gz 





