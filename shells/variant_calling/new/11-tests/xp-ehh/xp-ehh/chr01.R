
library(rehh)

setwd("/global/scratch/makman/GATK/final")
lr <- data2haplohh("chr01_SNP_lr.vcf", min_perc_geno.mrk = 30)
wd <- data2haplohh("chr01_SNP_wd.vcf", min_perc_geno.mrk = 30)

analyses = ies2xpehh(lr, wd, popname1 = "landrace", popname2 = "wild")

write.table(analyses, file = "chr01_lr_xpehh.txt", sep = "\t")

cvlr <- data2haplohh("chr01_SNP_cv_lr.vcf", min_perc_geno.mrk = 30)

analyses = ies2xpehh(cvlr, wd, popname1 = "domesticates", popname2 = "wild")

write.table(analyses, file = "chr01_cvlr_xpehh.txt", sep = "\t")
