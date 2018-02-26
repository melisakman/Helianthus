#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J SNPRelate
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/SNPRelate_SNP.out
#SBATCH -e /global/home/users/makman/GATK/outs/SNPRelate_SNP.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load r/3.4.3

R
library(gdsfmt)
library(SNPRelate)
setwd("/clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs")
vcf.fn = "VC_MA_combined_snps_filtered.vcf.gz"
snpgdsVCF2GDS(vcf.fn, "test.gds", method="biallelic.only")
snpgdsSummary("test.gds")
genofile <- snpgdsOpen(test.gds())
set.seed(1000)
# Try different LD thresholds for sensitivity analysis
snpset <- snpgdsLDpruning(genofile, ld.threshold=0.2)
names(snpset)
snpset.id <- unlist(snpset)
pca <- snpgdsPCA(genofile, snp.id=snpset.id, num.thread=2)
pc.percent <- pca$varprop*100
head(round(pc.percent, 2))
tab <- data.frame(sample.id = pca$sample.id, EV1 = pca$eigenvect[,1],    # the first eigenvector
	EV2 = pca$eigenvect[,2],    # the second eigenvector
	EV3 = pca$eigenvect[,3],
	EV4 = pca$eigenvect[,4],
	EV5 = pca$eigenvect[,5],
	EV6 = pca$eigenvect[,6],
	EV7 = pca$eigenvect[,7],
	stringsAsFactors = FALSE)
head(tab)

write.table(tab, file = "PCA_SNP.csv")



