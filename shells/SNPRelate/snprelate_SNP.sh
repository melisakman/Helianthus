## VC_MA

srun --account co_rosalind -p savio2_htc --qos rosalind_htc2_normal --mem=64000 --time=400:00:00 --pty bash

module load r/3.4.3

R
library(gdsfmt)
library(SNPRelate)
setwd("/clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs")

vcf.fn = "VC_MA_combined_all_hardfiltered.vcf.gz"
snpgdsVCF2GDS(vcf.fn, "VC_MA.gds", method="biallelic.only")
snpgdsSummary("VC_MA.gds")
genofile <- snpgdsOpen("VC_MA.gds")


set.seed(1000)
# Try different LD thresholds for sensitivity analysis
snpset <- snpgdsLDpruning(genofile, ld.threshold=0.2)
names(snpset)
head(snpset$chr1)
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

write.table(tab, file = "PCA_SNP_mex.csv")


## Sariel merged

srun -p vector --qos vector_batch --mem=64000 --time=400:00:00 --pty bash

module load r/3.4.3

R
library(gdsfmt)
library(SNPRelate)
setwd("/clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs")

vcf.fn = "merged_NVC_filtered_dups_hanxrqchr_removed.vcf"
snpgdsVCF2GDS(vcf.fn, "merged_dups_removed_filtered.gds", method="biallelic.only")
snpgdsSummary("merged_dups_removed_filtered.gds")
genofile <- snpgdsOpen("merged_dups_removed_filtered.gds")


set.seed(1000)
# Try different LD thresholds for sensitivity analysis
snpset <- snpgdsLDpruning(genofile, ld.threshold=0.2)
names(snpset)
head(snpset$chr1)
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

write.table(tab, file = "PCA_merged_dups_Removed_filtered.csv")


##Nathan GATK

srun --account co_rosalind -p savio2_htc --qos rosalind_htc2_normal --mem=64000 --time=400:00:00 --pty bash

module load r/3.4.3

R
library(gdsfmt)
library(SNPRelate)
setwd("/clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs")

vcf.fn = "Filtered.only_SNPs.whole_genome_hanxrq_removed_filtered.vcf.gz"
snpgdsVCF2GDS(vcf.fn, "VC_NW.gds", method="biallelic.only")
snpgdsSummary("VC_NW.gds")
genofile <- snpgdsOpen("VC_NW.gds")


set.seed(1000)
# Try different LD thresholds for sensitivity analysis
snpset <- snpgdsLDpruning(genofile, ld.threshold=0.2)
names(snpset)
head(snpset$chr1)
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

write.csv(tab, file = "PCA_VC_NW.csv")


## filtered (hardfiltered correctly and then vcftoolls filtered) all VCMA (SNP+indel)

srun --account co_rosalind -p savio2_htc --qos rosalind_htc2_normal --mem=64000 --time=400:00:00 --pty bash

zcat VC_MA_combined_all_hardfiltered_filtered.vcf.gz | sed 's/HanXRQChr//' > VC_MA_combined_all_hardfiltered_filtered_hanxrq_removed.vcf

module load r/3.4.3

R
library(gdsfmt)
library(SNPRelate)
setwd("/clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs")

vcf.fn = "VC_MA_combined_all_hardfiltered_filtered_hanxrq_removed.vcf"
snpgdsVCF2GDS(vcf.fn, "VC_MA_all_filtered.gds", method="biallelic.only")
snpgdsSummary("VC_MA_all_filtered.gds")
genofile <- snpgdsOpen("VC_MA_all_filtered.gds")


set.seed(1000)
# Try different LD thresholds for sensitivity analysis
snpset <- snpgdsLDpruning(genofile, ld.threshold=0.2)
names(snpset)
head(snpset$chr1)
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

SnpLoad <- snpgdsPCASNPLoading(pca, genofile)


write.table(tab, file = "PCA_VCMA_all_hardfiltered_filtered.csv")


## ethnographic samples

zcat VC_MA_combined_snps_ethno_hardfiltered_filtered.vcf.gz | sed 's/HanXRQChr//' > VC_MA_combined_snps_ethno_hardfiltered_filtered_hanxrq_removed.vcf

module load r/3.4.3

R
library(gdsfmt)
library(SNPRelate)
setwd("/clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs/gvcf")

vcf.fn = "VC_MA_combined_snps_ethno_hardfiltered_filtered_hanxrq_removed.vcf"
snpgdsVCF2GDS(vcf.fn, "ethno.gds", method="biallelic.only")
snpgdsSummary("ethno.gds")
genofile <- snpgdsOpen("ethno.gds")


set.seed(1000)
# Try different LD thresholds for sensitivity analysis
snpset <- snpgdsLDpruning(genofile, ld.threshold=0.2)
names(snpset)
head(snpset$chr1)
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

SnpLoad <- snpgdsPCASNPLoading(pca, genofile)


write.table(tab, file = "PCA_ethno.csv")


