#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr08
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/chr08_invariants_bcftools.out
#SBATCH -e /global/home/users/makman/GATK/outs/chr08_invariants_bcftools.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools


zcat freebayes/no_mnp/freebayes_invariant_chr08_.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/no_mnp/freebayes_invariant_chr08_ref.vcf.gz
# zcat samtools/samtools_invariant_chr08_dupsRemoved.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools/samtools_invariant_chr08_dupsRemoved_ref.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/no_mnp/freebayes_invariant_chr08_ref.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_invariant_chr08_dupsRemoved_ref.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr08_GATK_NoVar.vcf.gz

bcftools isec -n +2 -O z -p ../bcftools_isec/chr08_2_ref gvcfs/genotyping/chr08_GATK_NoVar.vcf.gz \
freebayes/no_mnp/freebayes_invariant_chr08_ref.vcf.gz \
samtools/samtools_invariant_chr08_dupsRemoved_ref.vcf.gz 
