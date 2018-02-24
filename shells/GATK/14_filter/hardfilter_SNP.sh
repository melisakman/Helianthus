#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J hfilt
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/hardfilter_VC_MA_SNP.out
#SBATCH -e /global/home/users/makman/GATK/outs/hardfilter_VC_MA_SNP.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load bio/vcftools/0.1.15
module load gcc/4.8.5 
module load java
module load perl

# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V VC_MA_chr01.vcf.gz \
# 	-selectType SNP \
# 	-o VC_MA_chr01_snps.vcf.gz 
# 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T VariantFiltration \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V VC_MA_chr01_snps.vcf.gz \
# 	--filterExpression "QD < 2.0 || FS > 60.0 || MQ < 40.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
# 	--filterName "my_snp_filter" \
# 	-o VC_MA_chr01_snps_filtered.vcf.gz 





vcf-concat VC_MA_chr01.vcf.gz \
	VC_MA_chr02.vcf.gz \
	VC_MA_chr03.vcf.gz \
	VC_MA_chr04.vcf.gz \
	VC_MA_chr05.vcf.gz \
	VC_MA_chr06.vcf.gz \
	VC_MA_chr07.vcf.gz \
	VC_MA_chr08.vcf.gz \
	VC_MA_chr09.vcf.gz \
	VC_MA_chr10.vcf.gz \
	VC_MA_chr11.vcf.gz \
	VC_MA_chr12.vcf.gz \
	VC_MA_chr13.vcf.gz \
	VC_MA_chr14.vcf.gz \
	VC_MA_chr15.vcf.gz \
	VC_MA_chr16.vcf.gz \
	VC_MA_chr17.vcf.gz | gzip -c > VC_MA_combined.vcf.gz

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VC_MA_combined.vcf.gz \
	-selectType SNP \
	-o VC_MA_combined_snps.vcf 

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T VariantFiltration \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VC_MA_combined_snps.vcf.gz \
	--filterExpression "QD < 2.0 || FS > 60.0 || MQ < 40.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
	--filterName "my_snp_filter" \
	-o VC_MA_combined_snps_filtered.vcf.gz 
