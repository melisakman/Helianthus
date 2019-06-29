
# 
# install.packages("gdsfmt")
# source("https://bioconductor.org/biocLite.R")
# biocLite("SNPRelate")

library(gdsfmt)
library(SNPRelate)
setwd("/global/scratch/makman/GATK/final/")

#vcf_chr04.fn = "../bcftools_isec/chr04_2plus_annot_G8_VQSR99.vcf.gz"
#snpgdsVCF2GDS(vcf_chr04.fn, "MA_chr04.gds", method="biallelic.only")
#snpgdsSummary("MA_chr04.gds")
genofile <- snpgdsOpen("MA_chr04.gds")


set.seed(1000)
# Try different LD thresholds for sensitivity analysis
#snpset <- snpgdsLDpruning(genofile, ld.threshold=0.2)
#names(snpset)
#snpset.id <- unlist(snpset)



pca <- snpgdsPCA(genofile, snp.id=snpset.id, num.thread=2, autosome.only=FALSE)
pc.percent <- pca$varprop*100
tab <- data.frame(sample.id = pca$sample.id, EV1 = pca$eigenvect[,1],    # the first eigenvector
	EV2 = pca$eigenvect[,2],    # the second eigenvector
	EV3 = pca$eigenvect[,3],
	EV4 = pca$eigenvect[,4],
	EV5 = pca$eigenvect[,5],
	EV6 = pca$eigenvect[,6],
	EV7 = pca$eigenvect[,7],
	stringsAsFactors = FALSE)
head(tab)

write.table(tab, file = "PCA_chr04.csv")


## Sariel merged

