#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/freebayes/
#SBATCH -J catchr03
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr03.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr03.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr03_chunk1.vcf \
freebayes_invariant_chr03_chunk2.vcf \
freebayes_invariant_chr03_chunk3.vcf \
freebayes_invariant_chr03_chunk4.vcf \
freebayes_invariant_chr03_chunk5.vcf \
freebayes_invariant_chr03_chunk6.vcf \
freebayes_invariant_chr03_chunk7.vcf \
freebayes_invariant_chr03_chunk8.vcf \
freebayes_invariant_chr03_chunk9.vcf \
freebayes_invariant_chr03_chunk10.vcf \
freebayes_invariant_chr03_chunk11.vcf \
freebayes_invariant_chr03_chunk12.vcf \
freebayes_invariant_chr03_chunk13.vcf \
freebayes_invariant_chr03_chunk14.vcf \
freebayes_invariant_chr03_chunk15.vcf \
freebayes_invariant_chr03_chunk16.vcf \
freebayes_invariant_chr03_chunk17.vcf \
freebayes_invariant_chr03_chunk18.vcf \
freebayes_invariant_chr03_chunk19.vcf \
freebayes_invariant_chr03_chunk20.vcf \
freebayes_invariant_chr03_chunk21.vcf \
freebayes_invariant_chr03_chunk22.vcf \
freebayes_invariant_chr03_chunk23.vcf \
freebayes_invariant_chr03_chunk24.vcf \
freebayes_invariant_chr03_chunk25.vcf \
freebayes_invariant_chr03_chunk26.vcf \
freebayes_invariant_chr03_chunk27.vcf \
freebayes_invariant_chr03_chunk28.vcf \
freebayes_invariant_chr03_chunk29.vcf \
freebayes_invariant_chr03_chunk30.vcf \
freebayes_invariant_chr03_chunk31.vcf \
freebayes_invariant_chr03_chunk32.vcf \
freebayes_invariant_chr03_chunk33.vcf \
freebayes_invariant_chr03_chunk34.vcf \
freebayes_invariant_chr03_chunk35.vcf \
freebayes_invariant_chr03_chunk36.vcf \
freebayes_invariant_chr03_chunk37.vcf \
freebayes_invariant_chr03_chunk38.vcf \
freebayes_invariant_chr03_chunk39.vcf \
freebayes_invariant_chr03_chunk40.vcf \
freebayes_invariant_chr03_chunk41.vcf \
freebayes_invariant_chr03_chunk42.vcf \
freebayes_invariant_chr03_chunk43.vcf \
freebayes_invariant_chr03_chunk44.vcf \
freebayes_invariant_chr03_chunk45.vcf > freebayes_invariant_chr03_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr03_combined.vcf > freebayes_invariant_chr03_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr03_combined.vcf.gz  

