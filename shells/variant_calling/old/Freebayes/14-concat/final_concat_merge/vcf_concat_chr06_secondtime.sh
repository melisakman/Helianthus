#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J catchr06-2
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr06_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/freebayes_vcf_concat_chr06_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load bcftools/1.6

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
freebayes_invariant_chr06_secondtime_chunk1.vcf \
freebayes_invariant_chr06_secondtime_chunk2.vcf \
freebayes_invariant_chr06_secondtime_chunk3.vcf \
freebayes_invariant_chr06_secondtime_chunk4.vcf \
freebayes_invariant_chr06_secondtime_chunk5.vcf \
freebayes_invariant_chr06_secondtime_chunk6.vcf \
freebayes_invariant_chr06_secondtime_chunk7.vcf \
freebayes_invariant_chr06_secondtime_chunk8.vcf \
freebayes_invariant_chr06_secondtime_chunk9.vcf \
freebayes_invariant_chr06_secondtime_chunk10.vcf \
freebayes_invariant_chr06_secondtime_chunk11.vcf \
freebayes_invariant_chr06_secondtime_chunk12.vcf \
freebayes_invariant_chr06_secondtime_chunk13.vcf \
freebayes_invariant_chr06_secondtime_chunk14.vcf \
freebayes_invariant_chr06_secondtime_chunk15.vcf \
freebayes_invariant_chr06_secondtime_chunk16.vcf \
freebayes_invariant_chr06_secondtime_chunk17.vcf \
freebayes_invariant_chr06_secondtime_chunk18.vcf \
freebayes_invariant_chr06_secondtime_chunk19.vcf \
freebayes_invariant_chr06_secondtime_chunk20.vcf \
freebayes_invariant_chr06_secondtime_chunk21.vcf \
freebayes_invariant_chr06_secondtime_chunk22.vcf \
freebayes_invariant_chr06_secondtime_chunk23.vcf \
freebayes_invariant_chr06_secondtime_chunk24.vcf \
freebayes_invariant_chr06_secondtime_chunk25.vcf \
freebayes_invariant_chr06_secondtime_chunk26.vcf > freebayes_invariant_chr06_secondtime_combined.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr06_secondtime_combined.vcf > freebayes_invariant_chr06_secondtime_combined.vcf.gz 
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr06_secondtime_combined.vcf.gz  

