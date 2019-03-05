#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/freebayes/
#SBATCH -J catchr10
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr10.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr10_chunk1.vcf \
freebayes_invariant_chr10_chunk2.vcf \
freebayes_invariant_chr10_chunk3.vcf \
freebayes_invariant_chr10_chunk4.vcf \
freebayes_invariant_chr10_chunk5.vcf \
freebayes_invariant_chr10_chunk6.vcf \
freebayes_invariant_chr10_chunk7.vcf \
freebayes_invariant_chr10_chunk8.vcf \
freebayes_invariant_chr10_chunk9.vcf \
freebayes_invariant_chr10_chunk10.vcf \
freebayes_invariant_chr10_chunk11.vcf \
freebayes_invariant_chr10_chunk12.vcf \
freebayes_invariant_chr10_chunk13.vcf \
freebayes_invariant_chr10_chunk14.vcf \
freebayes_invariant_chr10_chunk15.vcf \
freebayes_invariant_chr10_chunk16.vcf \
freebayes_invariant_chr10_chunk17.vcf \
freebayes_invariant_chr10_chunk18.vcf \
freebayes_invariant_chr10_chunk19.vcf \
freebayes_invariant_chr10_chunk20.vcf \
freebayes_invariant_chr10_chunk21.vcf \
freebayes_invariant_chr10_chunk22.vcf \
freebayes_invariant_chr10_chunk23.vcf \
freebayes_invariant_chr10_chunk24.vcf \
freebayes_invariant_chr10_chunk25.vcf \
freebayes_invariant_chr10_chunk26.vcf \
freebayes_invariant_chr10_chunk27.vcf \
freebayes_invariant_chr10_chunk28.vcf \
freebayes_invariant_chr10_chunk29.vcf \
freebayes_invariant_chr10_chunk30.vcf \
freebayes_invariant_chr10_chunk31.vcf \
freebayes_invariant_chr10_chunk32.vcf \
freebayes_invariant_chr10_chunk33.vcf \
freebayes_invariant_chr10_chunk34.vcf \
freebayes_invariant_chr10_chunk35.vcf \
freebayes_invariant_chr10_chunk36.vcf \
freebayes_invariant_chr10_chunk37.vcf \
freebayes_invariant_chr10_chunk38.vcf \
freebayes_invariant_chr10_chunk39.vcf \
freebayes_invariant_chr10_chunk40.vcf \
freebayes_invariant_chr10_chunk41.vcf \
freebayes_invariant_chr10_chunk42.vcf \
freebayes_invariant_chr10_chunk43.vcf \
freebayes_invariant_chr10_chunk44.vcf \
freebayes_invariant_chr10_chunk45.vcf \
freebayes_invariant_chr10_chunk46.vcf > freebayes_invariant_chr10_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr10_combined.vcf > freebayes_invariant_chr10_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr10_combined.vcf.gz  

