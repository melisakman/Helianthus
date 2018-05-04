#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes
#SBATCH -J chr15_cat
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/chunks_combine_chr15.out
#SBATCH -e /global/home/users/makman/GATK/outs/chunks_combine_chr15.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat freebayes_combined_chr15.vcf \
freebayes_combined_chr15_chunk1.vcf freebayes_combined_chr15_chunk2.vcf freebayes_combined_chr15_chunk3.vcf \
freebayes_combined_chr15_chunk4.vcf freebayes_combined_chr15_chunk5.vcf freebayes_combined_chr15_chunk6.vcf \
freebayes_combined_chr15_chunk7.vcf > freebayes_combined_chr15_chunksTogether.vcf
