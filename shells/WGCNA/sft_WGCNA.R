#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)
######################################################################
##G and E associations in gene expression for Arabidopsis accessions##
######################################################################
# Written by Melis Akman, February 2018

setwd("/clusterfs/rosalind/users/makman/WGCNA_Ara")
install.packages("WGCNA")

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