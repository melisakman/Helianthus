#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/freebayes/no_mnp
#SBATCH -J catchr08
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr08.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr08.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr08_chunk1.vcf \
freebayes_invariant_chr08_chunk2.vcf \
freebayes_invariant_chr08_chunk3.vcf \
freebayes_invariant_chr08_chunk4.vcf \
freebayes_invariant_chr08_chunk5.vcf \
freebayes_invariant_chr08_chunk6.vcf \
freebayes_invariant_chr08_chunk7.vcf \
freebayes_invariant_chr08_chunk8.vcf \
freebayes_invariant_chr08_chunk9.vcf \
freebayes_invariant_chr08_chunk10.vcf \
freebayes_invariant_chr08_chunk11.vcf \
freebayes_invariant_chr08_chunk12.vcf \
freebayes_invariant_chr08_chunk13.vcf \
freebayes_invariant_chr08_chunk14.vcf \
freebayes_invariant_chr08_chunk15.vcf \
freebayes_invariant_chr08_chunk16.vcf \
freebayes_invariant_chr08_chunk17.vcf \
freebayes_invariant_chr08_chunk18.vcf \
freebayes_invariant_chr08_chunk19.vcf \
freebayes_invariant_chr08_chunk20.vcf \
freebayes_invariant_chr08_chunk21.vcf \
freebayes_invariant_chr08_chunk22.vcf \
freebayes_invariant_chr08_chunk23.vcf \
freebayes_invariant_chr08_chunk24.vcf \
freebayes_invariant_chr08_chunk25.vcf \
freebayes_invariant_chr08_chunk26.vcf \
freebayes_invariant_chr08_chunk27.vcf \
freebayes_invariant_chr08_chunk28.vcf \
freebayes_invariant_chr08_chunk29.vcf \
freebayes_invariant_chr08_chunk30.vcf \
freebayes_invariant_chr08_chunk31.vcf \
freebayes_invariant_chr08_chunk32.vcf \
freebayes_invariant_chr08_chunk33.vcf \
freebayes_invariant_chr08_chunk34.vcf \
freebayes_invariant_chr08_chunk35.vcf \
freebayes_invariant_chr08_chunk36.vcf \
freebayes_invariant_chr08_chunk37.vcf \
freebayes_invariant_chr08_chunk38.vcf \
freebayes_invariant_chr08_chunk39.vcf \
freebayes_invariant_chr08_chunk40.vcf \
freebayes_invariant_chr08_chunk41.vcf \
freebayes_invariant_chr08_chunk42.vcf > freebayes_invariant_chr08_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr08_combined.vcf > freebayes_invariant_chr08_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr08_combined.vcf.gz  

