#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes
#SBATCH -J chr17_cat
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/chunks_combine_chr17.out
#SBATCH -e /global/home/users/makman/GATK/outs/chunks_combine_chr17.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat freebayes_combined_chr17.vcf \
freebayes_combined_chr17_chunk1.vcf freebayes_combined_chr17_chunk2.vcf freebayes_combined_chr17_chunk3.vcf \
freebayes_combined_chr17_chunk4.vcf freebayes_combined_chr17_chunk5.vcf freebayes_combined_chr17_chunk6.vcf \
freebayes_combined_chr17_chunk7.vcf freebayes_combined_chr17_chunk8.vcf freebayes_combined_chr17_chunk9.vcf
freebayes_combined_chr17_chunk10.vcf freebayes_combined_chr17_chunk11.vcf freebayes_combined_chr17_chunk12.vcf
freebayes_combined_chr17_chunk13.vcf freebayes_combined_chr17_chunk14.vcf > freebayes_combined_chr17_chunksTogether.vcf
