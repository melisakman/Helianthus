#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/bams/
#SBATCH -J catchr16
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr16.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr16.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr16_chunk1.vcf \
freebayes_invariant_chr16_chunk2.vcf \
freebayes_invariant_chr16_chunk3.vcf \
freebayes_invariant_chr16_chunk4.vcf \
freebayes_invariant_chr16_chunk5.vcf \
freebayes_invariant_chr16_chunk6.vcf \
freebayes_invariant_chr16_chunk7.vcf \
freebayes_invariant_chr16_chunk8.vcf \
freebayes_invariant_chr16_chunk9.vcf \
freebayes_invariant_chr16_chunk10.vcf \
freebayes_invariant_chr16_chunk11.vcf \
freebayes_invariant_chr16_chunk12.vcf \
freebayes_invariant_chr16_chunk13.vcf \
freebayes_invariant_chr16_chunk14.vcf \
freebayes_invariant_chr16_chunk15.vcf \
freebayes_invariant_chr16_chunk16.vcf \
freebayes_invariant_chr16_chunk17.vcf \
freebayes_invariant_chr16_chunk18.vcf \
freebayes_invariant_chr16_chunk19.vcf \
freebayes_invariant_chr16_chunk20.vcf \
freebayes_invariant_chr16_chunk21.vcf \
freebayes_invariant_chr16_chunk22.vcf \
freebayes_invariant_chr16_chunk23.vcf \
freebayes_invariant_chr16_chunk24.vcf \
freebayes_invariant_chr16_chunk25.vcf \
freebayes_invariant_chr16_chunk26.vcf \
freebayes_invariant_chr16_chunk27.vcf \
freebayes_invariant_chr16_chunk28.vcf \
freebayes_invariant_chr16_chunk29.vcf \
freebayes_invariant_chr16_chunk30.vcf \
freebayes_invariant_chr16_chunk31.vcf \
freebayes_invariant_chr16_chunk32.vcf \
freebayes_invariant_chr16_chunk33.vcf \
freebayes_invariant_chr16_chunk34.vcf \
freebayes_invariant_chr16_chunk35.vcf \
freebayes_invariant_chr16_chunk36.vcf \
freebayes_invariant_chr16_chunk37.vcf \
freebayes_invariant_chr16_chunk38.vcf \
freebayes_invariant_chr16_chunk39.vcf \
freebayes_invariant_chr16_chunk40.vcf \
freebayes_invariant_chr16_chunk41.vcf \
freebayes_invariant_chr16_chunk42.vcf \
freebayes_invariant_chr16_chunk43.vcf \
freebayes_invariant_chr16_chunk44.vcf \
freebayes_invariant_chr16_chunk45.vcf \
freebayes_invariant_chr16_chunk46.vcf \
freebayes_invariant_chr16_chunk47.vcf \
freebayes_invariant_chr16_chunk48.vcf \
freebayes_invariant_chr16_chunk49.vcf \
freebayes_invariant_chr16_chunk50.vcf \
freebayes_invariant_chr16_chunk51.vcf \
freebayes_invariant_chr16_chunk52.vcf > freebayes_invariant_chr16_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr16_combined.vcf > freebayes_invariant_chr16_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr16_combined.vcf.gz  

