#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes
#SBATCH -J chr10_cat
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/chunks_combine_chr10.out
#SBATCH -e /global/home/users/makman/GATK/outs/chunks_combine_chr10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp

# wc -l freebayes_combined_chr10.vcf # 7407413

head -n 7407412 freebayes_combined_chr10.vcf > freebayes_combined_chr10_excluded.vcf
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat freebayes_combined_chr10_excluded.vcf \
freebayes_combined_chr10_chunk1.vcf freebayes_combined_chr10_chunk2.vcf freebayes_combined_chr10_chunk3.vcf \
freebayes_combined_chr10_chunk4.vcf freebayes_combined_chr10_chunk5.vcf freebayes_combined_chr10_chunk6.vcf \
freebayes_combined_chr10_chunk7.vcf freebayes_combined_chr10_chunk8.vcf freebayes_combined_chr10_chunk9.vcf \
freebayes_combined_chr10_chunk10.vcf freebayes_combined_chr10_chunk11.vcf freebayes_combined_chr10_chunk12.vcf \
freebayes_combined_chr10_chunk13.vcf freebayes_combined_chr10_chunk14.vcf  freebayes_combined_chr10_chunk15.vcf > freebayes_combined_chr10_chunksTogether.vcf
