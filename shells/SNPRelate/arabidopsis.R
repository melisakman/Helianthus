library(gdsfmt)
library(SNPRelate)
setwd("/clusterfs/rosalind/users/makman/Arabidopsis")

vcf.fn = "testy.recode.vcf"
snpgdsVCF2GDS(vcf.fn, "Arabidopsis.gds", method="biallelic.only")
snpgdsSummary("Arabidopsis.gds")


genofile <- snpgdsOpen("Arabidopsis.gds")
