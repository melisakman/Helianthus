#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J 2chr04
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr04.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr04.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/old/samtools_invariant_chr04_dupsRemoved.vcf > samtools_VC/old/samtools_invariant_chr04_dupsRemoved.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools_VC/old/samtools_invariant_chr04_dupsRemoved.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/final_combined/old/freebayes_invariant_chr04_all.vcf.gz

bcftools isec -n +2 -O z -p bcftools_isec/unfiltered/chr04_2 fastq/invariants/VCMA_chr04.vcf.gz \
samtools_VC/old/samtools_invariant_chr04_dupsRemoved.vcf.gz \
freebayes/final_combined/old/freebayes_invariant_chr04_all.vcf.gz
