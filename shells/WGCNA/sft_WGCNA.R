#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)
######################################################################
##G and E associations in gene expression for Arabidopsis accessions##
######################################################################
# Written by Melis Akman, February 2018

setwd("/clusterfs/rosalind/users/makman/WGCNA_Ara")
install.packages("/global/home/users/makman/R/memoise", repos = NULL, lib = "/global/home/users/makman/R/x86_64-pc-linux-gnu-library/3.4/")

install.packages("/global/home/users/makman/R/WGCNA", repos = NULL, lib = "/global/home/users/makman/R/x86_64-pc-linux-gnu-library/3.4/")
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