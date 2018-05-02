#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/VCMA_ethno
#SBATCH -J chr8_cat
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/chunks_combine_chr8.out
#SBATCH -e /global/home/users/makman/GATK/outs/chunks_combine_chr8.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat freebayes_combined_chr08.vcf freebayes_combined_chr08_chunk1.vcf freebayes_combined_chr08_chunk2.vcf freebayes_combined_chr08_chunk3.vcf > freebayes_combined_chr08_chunksTogether.vcf
