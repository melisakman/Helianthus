#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/bams/
#SBATCH -J catchr17
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr17.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr17.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr17_chunk1.vcf \
freebayes_invariant_chr17_chunk2.vcf \
freebayes_invariant_chr17_chunk3.vcf \
freebayes_invariant_chr17_chunk4.vcf \
freebayes_invariant_chr17_chunk5.vcf \
freebayes_invariant_chr17_chunk6.vcf \
freebayes_invariant_chr17_chunk7.vcf \
freebayes_invariant_chr17_chunk8.vcf \
freebayes_invariant_chr17_chunk9.vcf \
freebayes_invariant_chr17_chunk10.vcf \
freebayes_invariant_chr17_chunk11.vcf \
freebayes_invariant_chr17_chunk12.vcf \
freebayes_invariant_chr17_chunk13.vcf \
freebayes_invariant_chr17_chunk14.vcf \
freebayes_invariant_chr17_chunk15.vcf \
freebayes_invariant_chr17_chunk16.vcf \
freebayes_invariant_chr17_chunk17.vcf \
freebayes_invariant_chr17_chunk18.vcf \
freebayes_invariant_chr17_chunk19.vcf \
freebayes_invariant_chr17_chunk20.vcf \
freebayes_invariant_chr17_chunk21.vcf \
freebayes_invariant_chr17_chunk22.vcf \
freebayes_invariant_chr17_chunk23.vcf \
freebayes_invariant_chr17_chunk24.vcf \
freebayes_invariant_chr17_chunk25.vcf \
freebayes_invariant_chr17_chunk26.vcf \
freebayes_invariant_chr17_chunk27.vcf \
freebayes_invariant_chr17_chunk28.vcf \
freebayes_invariant_chr17_chunk29.vcf \
freebayes_invariant_chr17_chunk30.vcf \
freebayes_invariant_chr17_chunk31.vcf \
freebayes_invariant_chr17_chunk32.vcf \
freebayes_invariant_chr17_chunk33.vcf \
freebayes_invariant_chr17_chunk34.vcf \
freebayes_invariant_chr17_chunk35.vcf \
freebayes_invariant_chr17_chunk36.vcf \
freebayes_invariant_chr17_chunk37.vcf \
freebayes_invariant_chr17_chunk38.vcf \
freebayes_invariant_chr17_chunk39.vcf \
freebayes_invariant_chr17_chunk40.vcf \
freebayes_invariant_chr17_chunk41.vcf \
freebayes_invariant_chr17_chunk42.vcf \
freebayes_invariant_chr17_chunk43.vcf \
freebayes_invariant_chr17_chunk44.vcf \
freebayes_invariant_chr17_chunk45.vcf \
freebayes_invariant_chr17_chunk46.vcf \
freebayes_invariant_chr17_chunk47.vcf \
freebayes_invariant_chr17_chunk48.vcf \
freebayes_invariant_chr17_chunk49.vcf > freebayes_invariant_chr17_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr17_combined.vcf > freebayes_invariant_chr17_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr17_combined.vcf.gz  

