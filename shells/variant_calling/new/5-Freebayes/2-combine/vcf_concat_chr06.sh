#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/freebayes/
#SBATCH -J catchr06
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=660:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr06.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr06.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
TMPDIR=/global/scratch/makman/temp
module load bcftools/1.6
bcftools concat \
freebayes_invariant_chr06_chunk1.vcf \
freebayes_invariant_chr06_chunk2.vcf \
freebayes_invariant_chr06_chunk3.vcf \
freebayes_invariant_chr06_chunk4.vcf \
freebayes_invariant_chr06_chunk5.vcf \
freebayes_invariant_chr06_chunk6.vcf \
freebayes_invariant_chr06_chunk7.vcf \
freebayes_invariant_chr06_chunk8.vcf \
freebayes_invariant_chr06_chunk9.vcf \
freebayes_invariant_chr06_chunk10.vcf \
freebayes_invariant_chr06_chunk11.vcf \
freebayes_invariant_chr06_chunk12.vcf \
freebayes_invariant_chr06_chunk13.vcf \
freebayes_invariant_chr06_chunk14.vcf \
freebayes_invariant_chr06_chunk15.vcf \
freebayes_invariant_chr06_chunk16.vcf \
freebayes_invariant_chr06_chunk17.vcf \
freebayes_invariant_chr06_chunk18.vcf \
freebayes_invariant_chr06_chunk19.vcf \
freebayes_invariant_chr06_chunk20.vcf \
freebayes_invariant_chr06_chunk21.vcf \
freebayes_invariant_chr06_chunk22.vcf \
freebayes_invariant_chr06_chunk23.vcf \
freebayes_invariant_chr06_chunk24.vcf \
freebayes_invariant_chr06_chunk25.vcf \
freebayes_invariant_chr06_chunk26.vcf \
freebayes_invariant_chr06_chunk27.vcf \
freebayes_invariant_chr06_chunk28.vcf \
freebayes_invariant_chr06_chunk29.vcf \
freebayes_invariant_chr06_chunk30.vcf \
freebayes_invariant_chr06_chunk31.vcf \
freebayes_invariant_chr06_chunk32.vcf \
freebayes_invariant_chr06_chunk33.vcf \
freebayes_invariant_chr06_chunk34.vcf \
freebayes_invariant_chr06_chunk35.vcf \
freebayes_invariant_chr06_chunk36.vcf \
freebayes_invariant_chr06_chunk37.vcf \
freebayes_invariant_chr06_chunk38.vcf > freebayes_invariant_chr06_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr06_combined.vcf > freebayes_invariant_chr06_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr06_combined.vcf.gz  

