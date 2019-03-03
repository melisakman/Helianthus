#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/bams/
#SBATCH -J catchr05
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr05.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr05.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr05_chunk1.vcf \
freebayes_invariant_chr05_chunk2.vcf \
freebayes_invariant_chr05_chunk3.vcf \
freebayes_invariant_chr05_chunk4.vcf \
freebayes_invariant_chr05_chunk5.vcf \
freebayes_invariant_chr05_chunk6.vcf \
freebayes_invariant_chr05_chunk7.vcf \
freebayes_invariant_chr05_chunk8.vcf \
freebayes_invariant_chr05_chunk9.vcf \
freebayes_invariant_chr05_chunk10.vcf \
freebayes_invariant_chr05_chunk11.vcf \
freebayes_invariant_chr05_chunk12.vcf \
freebayes_invariant_chr05_chunk13.vcf \
freebayes_invariant_chr05_chunk14.vcf \
freebayes_invariant_chr05_chunk15.vcf \
freebayes_invariant_chr05_chunk16.vcf \
freebayes_invariant_chr05_chunk17.vcf \
freebayes_invariant_chr05_chunk18.vcf \
freebayes_invariant_chr05_chunk19.vcf \
freebayes_invariant_chr05_chunk20.vcf \
freebayes_invariant_chr05_chunk21.vcf \
freebayes_invariant_chr05_chunk22.vcf \
freebayes_invariant_chr05_chunk23.vcf \
freebayes_invariant_chr05_chunk24.vcf \
freebayes_invariant_chr05_chunk25.vcf \
freebayes_invariant_chr05_chunk26.vcf \
freebayes_invariant_chr05_chunk27.vcf \
freebayes_invariant_chr05_chunk28.vcf \
freebayes_invariant_chr05_chunk29.vcf \
freebayes_invariant_chr05_chunk30.vcf \
freebayes_invariant_chr05_chunk31.vcf \
freebayes_invariant_chr05_chunk32.vcf \
freebayes_invariant_chr05_chunk33.vcf \
freebayes_invariant_chr05_chunk34.vcf \
freebayes_invariant_chr05_chunk35.vcf \
freebayes_invariant_chr05_chunk36.vcf \
freebayes_invariant_chr05_chunk37.vcf \
freebayes_invariant_chr05_chunk38.vcf \
freebayes_invariant_chr05_chunk39.vcf \
freebayes_invariant_chr05_chunk40.vcf \
freebayes_invariant_chr05_chunk41.vcf \
freebayes_invariant_chr05_chunk42.vcf \
freebayes_invariant_chr05_chunk43.vcf \
freebayes_invariant_chr05_chunk44.vcf \
freebayes_invariant_chr05_chunk45.vcf > freebayes_invariant_chr05_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr05_combined.vcf > freebayes_invariant_chr05_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr05_combined.vcf.gz  

