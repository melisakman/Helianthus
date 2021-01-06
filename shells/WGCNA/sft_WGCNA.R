#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)
######################################################################
##G and E associations in gene expression for Arabidopsis accessions##
######################################################################
# Written by Melis Akman, February 2018

setwd("/home/makman/Arabi_GxE")
library("WGCNA")
enableWGCNAThreads()
lnames = load(file = "Arab_dataInput.RData")
lnames
# Choose a set of soft-thresholding powers
powers = c(c(1:10), seq(from = 12, to=20, by=2))
# Call the network topology analysis function
sft = pickSoftThreshold(datArab, powerVector = powers, verbose = 5)
sft 
write.csv(sft, file = "sft.csv")

softPower = 8;
bwnet = blockwiseModules(datArab, maxBlockSize = 20000,
                         power = 8, TOMType = "unsigned", minModuleSize = 50,
                         reassignThreshold = 0, mergeCutHeight = 0.25,
                         numericLabels = TRUE,
                         saveTOMs = TRUE,
                         saveTOMFileBase = "power8_combined_TOM-blockwise_updated",
                         verbose = 3)
save(bwnet, file="combined_power8_bwnet.RData")# Call the hierarchical clustering function


softPower = 6;
bwnet = blockwiseModules(datArab, maxBlockSize = 20000,
                         power = 6, TOMType = "unsigned", minModuleSize = 50,
                         reassignThreshold = 0, mergeCutHeight = 0.25,
                         numericLabels = TRUE,
                         saveTOMs = TRUE,
                         saveTOMFileBase = "power8_combined_TOM-blockwise_updated",
                         verbose = 3)
save(bwnet, file="combined_power6_bwnet.RData")# Call the hierarchical clustering function

