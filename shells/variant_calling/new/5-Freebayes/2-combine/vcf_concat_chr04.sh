#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/bams/
#SBATCH -J catchr04
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr04.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr04.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr04_chunk1.vcf \
freebayes_invariant_chr04_chunk2.vcf \
freebayes_invariant_chr04_chunk3.vcf \
freebayes_invariant_chr04_chunk4.vcf \
freebayes_invariant_chr04_chunk5.vcf \
freebayes_invariant_chr04_chunk6.vcf \
freebayes_invariant_chr04_chunk7.vcf \
freebayes_invariant_chr04_chunk8.vcf \
freebayes_invariant_chr04_chunk9.vcf \
freebayes_invariant_chr04_chunk10.vcf \
freebayes_invariant_chr04_chunk11.vcf \
freebayes_invariant_chr04_chunk12.vcf \
freebayes_invariant_chr04_chunk13.vcf \
freebayes_invariant_chr04_chunk14.vcf \
freebayes_invariant_chr04_chunk15.vcf \
freebayes_invariant_chr04_chunk16.vcf \
freebayes_invariant_chr04_chunk17.vcf \
freebayes_invariant_chr04_chunk18.vcf \
freebayes_invariant_chr04_chunk19.vcf \
freebayes_invariant_chr04_chunk20.vcf \
freebayes_invariant_chr04_chunk21.vcf \
freebayes_invariant_chr04_chunk22.vcf \
freebayes_invariant_chr04_chunk23.vcf \
freebayes_invariant_chr04_chunk24.vcf \
freebayes_invariant_chr04_chunk25.vcf \
freebayes_invariant_chr04_chunk26.vcf \
freebayes_invariant_chr04_chunk27.vcf \
freebayes_invariant_chr04_chunk28.vcf \
freebayes_invariant_chr04_chunk29.vcf \
freebayes_invariant_chr04_chunk30.vcf \
freebayes_invariant_chr04_chunk31.vcf \
freebayes_invariant_chr04_chunk32.vcf \
freebayes_invariant_chr04_chunk33.vcf \
freebayes_invariant_chr04_chunk34.vcf \
freebayes_invariant_chr04_chunk35.vcf \
freebayes_invariant_chr04_chunk36.vcf \
freebayes_invariant_chr04_chunk37.vcf \
freebayes_invariant_chr04_chunk38.vcf \
freebayes_invariant_chr04_chunk39.vcf \
freebayes_invariant_chr04_chunk40.vcf \
freebayes_invariant_chr04_chunk41.vcf \
freebayes_invariant_chr04_chunk42.vcf \
freebayes_invariant_chr04_chunk43.vcf \
freebayes_invariant_chr04_chunk44.vcf \
freebayes_invariant_chr04_chunk45.vcf \
freebayes_invariant_chr04_chunk46.vcf \
freebayes_invariant_chr04_chunk47.vcf \
freebayes_invariant_chr04_chunk48.vcf \
freebayes_invariant_chr04_chunk49.vcf \
freebayes_invariant_chr04_chunk50.vcf \
freebayes_invariant_chr04_chunk51.vcf \
freebayes_invariant_chr04_chunk52.vcf \
freebayes_invariant_chr04_chunk53.vcf > freebayes_invariant_chr04_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr04_combined.vcf > freebayes_invariant_chr04_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr04_combined.vcf.gz  

