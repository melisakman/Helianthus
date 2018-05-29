#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J filchr01S
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_freebayes_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_freebayes_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes_invariant_chr01_chunk1.vcf > freebayes_invariant_chr01_chunk1.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr01_chunk1.vcf.gz  


# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V freebayes_invariant_chr01_chunk1.vcf.gz \
# 	-selectType INDEL \
# 	-o freebayes_invariant_chr01_chunk1_test.vcf.gz 
# 


zcat freebayes_invariant_chr01_chunk1_test.vcf.gz | bcftools filter -g 5 -e 'REF="N" || QUAL/DP < 2.0'| /clusterfs/rosalind/users/makman/vcflib/bin/vcffilter -f "QUAL > 50 & SAF > 1 & SAR > 1 & RPR > 1 & RPL > 1" | vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | vcf-sort | gzip -c > freebayes_invariant_chr01_chunk1_test_filtered.vcf.gz


