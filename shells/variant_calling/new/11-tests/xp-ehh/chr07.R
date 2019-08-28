
library(rehh)

setwd("/global/scratch/makman/GATK/final")
lr <- data2haplohh("chr07_SNP_lr_heteroFiltered.vcf", min_perc_geno.mrk = 30, polarize_vcf = FALSE)
wd <- data2haplohh("chr07_SNP_wd_heteroFiltered.vcf", min_perc_geno.mrk = 30, polarize_vcf = FALSE)

lr_scan = scan_hh(lr, limhaplo = 2, limehh = 0.05, limehhs = 0.05,
phased = FALSE, polarized = FALSE, scalegap = NA, maxgap = NA,
discard_integration_at_border = TRUE, lower_ehh_y_bound = 0.05,
lower_ehhs_y_bound = 0.05, threads = 4)

wd_scan = scan_hh(wd, limhaplo = 2, limehh = 0.05, limehhs = 0.05,
phased = FALSE, polarized = FALSE, scalegap = NA, maxgap = NA,
discard_integration_at_border = TRUE, lower_ehh_y_bound = 0.05,
lower_ehhs_y_bound = 0.05, threads = 4)

analyses = ies2xpehh(lr_scan, wd_scan, popname1 = "landrace", popname2 = "wild", include_freq =TRUE)

write.table(analyses, file = "chr07_lr_xpehh.txt", sep = "\t")

cvlr <- data2haplohh("chr07_SNP_cv_lr_heteroFiltered.vcf", min_perc_geno.mrk = 30, polarize_vcf = FALSE)
 
cvlr_scan = scan_hh(cvlr, limhaplo = 2, limehh = 0.05, limehhs = 0.05,
phased = FALSE, polarized = FALSE, scalegap = NA, maxgap = NA,
discard_integration_at_border = TRUE, lower_ehh_y_bound = 0.05,
lower_ehhs_y_bound = 0.05, threads = 4)

analyses = ies2xpehh(cvlr_scan, wd_scan, popname1 = "domesticates", popname2 = "wild", include_freq =TRUE)
 
write.table(analyses, file = "chr07_cvlr_xpehh.txt", sep = "\t")
