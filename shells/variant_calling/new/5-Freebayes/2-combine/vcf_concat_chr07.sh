#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/freebayes/
#SBATCH -J catchr07
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr07.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr07.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr07_chunk1.vcf \
freebayes_invariant_chr07_chunk2.vcf \
freebayes_invariant_chr07_chunk3.vcf \
freebayes_invariant_chr07_chunk4.vcf \
freebayes_invariant_chr07_chunk5.vcf \
freebayes_invariant_chr07_chunk6.vcf \
freebayes_invariant_chr07_chunk7.vcf \
freebayes_invariant_chr07_chunk8.vcf \
freebayes_invariant_chr07_chunk9.vcf \
freebayes_invariant_chr07_chunk10.vcf \
freebayes_invariant_chr07_chunk11.vcf \
freebayes_invariant_chr07_chunk12.vcf \
freebayes_invariant_chr07_chunk13.vcf \
freebayes_invariant_chr07_chunk14.vcf \
freebayes_invariant_chr07_chunk15.vcf \
freebayes_invariant_chr07_chunk16.vcf \
freebayes_invariant_chr07_chunk17.vcf \
freebayes_invariant_chr07_chunk18.vcf \
freebayes_invariant_chr07_chunk19.vcf \
freebayes_invariant_chr07_chunk20.vcf \
freebayes_invariant_chr07_chunk21.vcf \
freebayes_invariant_chr07_chunk22.vcf \
freebayes_invariant_chr07_chunk23.vcf \
freebayes_invariant_chr07_chunk24.vcf \
freebayes_invariant_chr07_chunk25.vcf \
freebayes_invariant_chr07_chunk26.vcf \
freebayes_invariant_chr07_chunk27.vcf \
freebayes_invariant_chr07_chunk28.vcf \
freebayes_invariant_chr07_chunk29.vcf \
freebayes_invariant_chr07_chunk30.vcf \
freebayes_invariant_chr07_chunk31.vcf \
freebayes_invariant_chr07_chunk32.vcf \
freebayes_invariant_chr07_chunk33.vcf \
freebayes_invariant_chr07_chunk34.vcf \
freebayes_invariant_chr07_chunk35.vcf \
freebayes_invariant_chr07_chunk36.vcf \
freebayes_invariant_chr07_chunk37.vcf \
freebayes_invariant_chr07_chunk38.vcf > freebayes_invariant_chr07_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr07_combined.vcf > freebayes_invariant_chr07_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr07_combined.vcf.gz  

