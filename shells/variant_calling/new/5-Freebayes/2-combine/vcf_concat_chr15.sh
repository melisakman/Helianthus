#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/bams/
#SBATCH -J catchr15
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr15.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr15.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr15_chunk1.vcf \
freebayes_invariant_chr15_chunk2.vcf \
freebayes_invariant_chr15_chunk3.vcf \
freebayes_invariant_chr15_chunk4.vcf \
freebayes_invariant_chr15_chunk5.vcf \
freebayes_invariant_chr15_chunk6.vcf \
freebayes_invariant_chr15_chunk7.vcf \
freebayes_invariant_chr15_chunk8.vcf \
freebayes_invariant_chr15_chunk9.vcf \
freebayes_invariant_chr15_chunk10.vcf \
freebayes_invariant_chr15_chunk11.vcf \
freebayes_invariant_chr15_chunk12.vcf \
freebayes_invariant_chr15_chunk13.vcf \
freebayes_invariant_chr15_chunk14.vcf \
freebayes_invariant_chr15_chunk15.vcf \
freebayes_invariant_chr15_chunk16.vcf \
freebayes_invariant_chr15_chunk17.vcf \
freebayes_invariant_chr15_chunk18.vcf \
freebayes_invariant_chr15_chunk19.vcf \
freebayes_invariant_chr15_chunk20.vcf \
freebayes_invariant_chr15_chunk21.vcf \
freebayes_invariant_chr15_chunk22.vcf \
freebayes_invariant_chr15_chunk23.vcf \
freebayes_invariant_chr15_chunk24.vcf \
freebayes_invariant_chr15_chunk25.vcf \
freebayes_invariant_chr15_chunk26.vcf \
freebayes_invariant_chr15_chunk27.vcf \
freebayes_invariant_chr15_chunk28.vcf \
freebayes_invariant_chr15_chunk29.vcf \
freebayes_invariant_chr15_chunk30.vcf \
freebayes_invariant_chr15_chunk31.vcf \
freebayes_invariant_chr15_chunk32.vcf \
freebayes_invariant_chr15_chunk33.vcf \
freebayes_invariant_chr15_chunk34.vcf \
freebayes_invariant_chr15_chunk35.vcf \
freebayes_invariant_chr15_chunk36.vcf \
freebayes_invariant_chr15_chunk37.vcf \
freebayes_invariant_chr15_chunk38.vcf \
freebayes_invariant_chr15_chunk39.vcf \
freebayes_invariant_chr15_chunk40.vcf \
freebayes_invariant_chr15_chunk41.vcf \
freebayes_invariant_chr15_chunk42.vcf \
freebayes_invariant_chr15_chunk43.vcf \
freebayes_invariant_chr15_chunk44.vcf > freebayes_invariant_chr15_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr15_combined.vcf > freebayes_invariant_chr15_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr15_combined.vcf.gz  

