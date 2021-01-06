#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/freebayes/no_mnp
#SBATCH -J catchr09
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr09.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr09.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr09_chunk1.vcf \
freebayes_invariant_chr09_chunk2.vcf \
freebayes_invariant_chr09_chunk3.vcf \
freebayes_invariant_chr09_chunk4.vcf \
freebayes_invariant_chr09_chunk5.vcf \
freebayes_invariant_chr09_chunk6.vcf \
freebayes_invariant_chr09_chunk7.vcf \
freebayes_invariant_chr09_chunk8.vcf \
freebayes_invariant_chr09_chunk9.vcf \
freebayes_invariant_chr09_chunk10.vcf \
freebayes_invariant_chr09_chunk11.vcf \
freebayes_invariant_chr09_chunk12.vcf \
freebayes_invariant_chr09_chunk13.vcf \
freebayes_invariant_chr09_chunk14.vcf \
freebayes_invariant_chr09_chunk15.vcf \
freebayes_invariant_chr09_chunk16.vcf \
freebayes_invariant_chr09_chunk17.vcf \
freebayes_invariant_chr09_chunk18.vcf \
freebayes_invariant_chr09_chunk19.vcf \
freebayes_invariant_chr09_chunk20.vcf \
freebayes_invariant_chr09_chunk21.vcf \
freebayes_invariant_chr09_chunk22.vcf \
freebayes_invariant_chr09_chunk23.vcf \
freebayes_invariant_chr09_chunk24.vcf \
freebayes_invariant_chr09_chunk25.vcf \
freebayes_invariant_chr09_chunk26.vcf \
freebayes_invariant_chr09_chunk27.vcf \
freebayes_invariant_chr09_chunk28.vcf \
freebayes_invariant_chr09_chunk29.vcf \
freebayes_invariant_chr09_chunk30.vcf \
freebayes_invariant_chr09_chunk31.vcf \
freebayes_invariant_chr09_chunk32.vcf \
freebayes_invariant_chr09_chunk33.vcf \
freebayes_invariant_chr09_chunk34.vcf \
freebayes_invariant_chr09_chunk35.vcf \
freebayes_invariant_chr09_chunk36.vcf \
freebayes_invariant_chr09_chunk37.vcf \
freebayes_invariant_chr09_chunk38.vcf \
freebayes_invariant_chr09_chunk39.vcf \
freebayes_invariant_chr09_chunk40.vcf \
freebayes_invariant_chr09_chunk41.vcf \
freebayes_invariant_chr09_chunk42.vcf \
freebayes_invariant_chr09_chunk43.vcf \
freebayes_invariant_chr09_chunk44.vcf \
freebayes_invariant_chr09_chunk45.vcf \
freebayes_invariant_chr09_chunk46.vcf \
freebayes_invariant_chr09_chunk47.vcf \
freebayes_invariant_chr09_chunk48.vcf > freebayes_invariant_chr09_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr09_combined.vcf > freebayes_invariant_chr09_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr09_combined.vcf.gz  

