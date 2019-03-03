#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/bams/
#SBATCH -J catchr11
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr11.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr11.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr11_chunk1.vcf \
freebayes_invariant_chr11_chunk2.vcf \
freebayes_invariant_chr11_chunk3.vcf \
freebayes_invariant_chr11_chunk4.vcf \
freebayes_invariant_chr11_chunk5.vcf \
freebayes_invariant_chr11_chunk6.vcf \
freebayes_invariant_chr11_chunk7.vcf \
freebayes_invariant_chr11_chunk8.vcf \
freebayes_invariant_chr11_chunk9.vcf \
freebayes_invariant_chr11_chunk10.vcf \
freebayes_invariant_chr11_chunk11.vcf \
freebayes_invariant_chr11_chunk12.vcf \
freebayes_invariant_chr11_chunk13.vcf \
freebayes_invariant_chr11_chunk14.vcf \
freebayes_invariant_chr11_chunk15.vcf \
freebayes_invariant_chr11_chunk16.vcf \
freebayes_invariant_chr11_chunk17.vcf \
freebayes_invariant_chr11_chunk18.vcf \
freebayes_invariant_chr11_chunk19.vcf \
freebayes_invariant_chr11_chunk20.vcf \
freebayes_invariant_chr11_chunk21.vcf \
freebayes_invariant_chr11_chunk22.vcf \
freebayes_invariant_chr11_chunk23.vcf \
freebayes_invariant_chr11_chunk24.vcf \
freebayes_invariant_chr11_chunk25.vcf \
freebayes_invariant_chr11_chunk26.vcf \
freebayes_invariant_chr11_chunk27.vcf \
freebayes_invariant_chr11_chunk28.vcf \
freebayes_invariant_chr11_chunk29.vcf \
freebayes_invariant_chr11_chunk30.vcf \
freebayes_invariant_chr11_chunk31.vcf \
freebayes_invariant_chr11_chunk32.vcf \
freebayes_invariant_chr11_chunk33.vcf \
freebayes_invariant_chr11_chunk34.vcf \
freebayes_invariant_chr11_chunk35.vcf \
freebayes_invariant_chr11_chunk36.vcf \
freebayes_invariant_chr11_chunk37.vcf \
freebayes_invariant_chr11_chunk38.vcf \
freebayes_invariant_chr11_chunk39.vcf \
freebayes_invariant_chr11_chunk40.vcf \
freebayes_invariant_chr11_chunk41.vcf \
freebayes_invariant_chr11_chunk42.vcf \
freebayes_invariant_chr11_chunk43.vcf \
freebayes_invariant_chr11_chunk44.vcf \
freebayes_invariant_chr11_chunk45.vcf \
freebayes_invariant_chr11_chunk46.vcf \
freebayes_invariant_chr11_chunk47.vcf \
freebayes_invariant_chr11_chunk48.vcf> freebayes_invariant_chr11_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr11_combined.vcf > freebayes_invariant_chr11_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr11_combined.vcf.gz  

