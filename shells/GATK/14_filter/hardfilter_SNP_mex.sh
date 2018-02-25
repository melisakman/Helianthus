#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J hfiltM
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=64000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/hardfilter_VC_MA_SNP_mex.out
#SBATCH -e /global/home/users/makman/GATK/outs/hardfilter_VC_MA_SNP_mex.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.13
module load gcc/4.8.5 
module load java
module load perl
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat VC_MA_chr01_mex.vcf.gz \
# 	VC_MA_chr02_mex.vcf.gz \
# 	VC_MA_chr03_mex.vcf.gz \
# 	VC_MA_chr04_mex.vcf.gz \
# 	VC_MA_chr05_mex.vcf.gz \
# 	VC_MA_chr06_mex.vcf.gz \
# 	VC_MA_chr07_mex.vcf.gz \
# 	VC_MA_chr08_mex.vcf.gz \
# 	VC_MA_chr09_mex.vcf.gz \
# 	VC_MA_chr10_mex.vcf.gz \
# 	VC_MA_chr11_mex.vcf.gz \
# 	VC_MA_chr12_mex.vcf.gz \
# 	VC_MA_chr13_mex.vcf.gz \
# 	VC_MA_chr14_mex.vcf.gz \
# 	VC_MA_chr15_mex.vcf.gz \
# 	VC_MA_chr16_mex.vcf.gz \
# 	VC_MA_chr17_mex.vcf.gz | gzip -c > VC_MA_combined_mex.vcf.gz
# 
# gunzip VC_MA_combined_mex.vcf.gz
# /clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c VC_MA_combined_mex.vcf > VC_MA_combined_mex.vcf.gz
# /clusterfs/vector/scratch/makman/tabix-0.2.6/tabix -p vcf VC_MA_combined_mex.vcf.gz
# 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V VC_MA_combined_mex.vcf.gz \
# 	-selectType SNP \
# 	-o VC_MA_combined_snps_mex.vcf 
# 
/clusterfs/vector/scratch/makman/tabix-0.2.6/bgzip -c VC_MA_combined_snps_mex.vcf > VC_MA_combined_snps_mex.vcf.gz
/clusterfs/vector/scratch/makman/tabix-0.2.6/tabix -p vcf VC_MA_combined_snps_mex.vcf.gz

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T VariantFiltration \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VC_MA_combined_snps_mex.vcf.gz \
	--filterExpression "QD < 2.0 || FS > 60.0 || MQ < 40.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
	--filterName "my_snp_filter" \
	-o VC_MA_combined_snps_mex_filtered.vcf.gz 
