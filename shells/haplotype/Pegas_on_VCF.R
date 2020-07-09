#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)
# lib = "/clusterfs/vector/scratch/makman/Rpackages/"
gene <- args[1]
VCF_file <- args[2]
# install.packages("pegas")
library(pegas)
library(vcfR)

setwd("/clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/VCF_final")


gene_investigated_info <- VCFloci(VCF_file)
  
# Check if there are no SNPs. If not, make a PDF and exit
if (nrow(gene_investigated_info)<2){ 
  pdf(paste("HapNet_",gene,".pdf", sep = ""), width=6, height=6)
  plot.new()
  text(.5, .5, labels=":(", cex = 14, col='red', srt=270)
  title(main = gene, sub = paste("GENE FAILED FOR NETWORK!   SNPs in gene=", nrow(gene_investigated_info)) )
  dev.off()
  } else {
  gene_investigated <- read.vcf(VCF_file)
  names(gene_investigated) <- paste0(gene_investigated_info$POS)
  
  ### Here figuring out the SNP windows to test
  table_good_SNP <- as.data.frame((is.phased(gene_investigated)) & (!gene_investigated[,]==".") & (!gene_investigated[,]=="./."))
  row.names(table_good_SNP) <- rownames(gene_investigated)
  
  # Making a table for windows of SNPs and calculating how many samples work for each window
  Total_SNPS_in_gene <- length(gene_investigated)
  Window_options <- data.frame(Number_of_SNPs=integer(), Start=integer(), End=integer(), Number_Samples=integer())
  for(j in 1:(length(gene_investigated))){
    Window_options <- rbind(Window_options,(data.frame(Number_of_SNPs = j, Start = 1:(Total_SNPS_in_gene-j+1), End = j:Total_SNPS_in_gene, Number_Samples=0)))
  }
  for(k in 1:nrow(Window_options)){
    Window_options[k,]$Number_Samples <- sum(apply((as.data.frame(table_good_SNP[,(Window_options[k,]$Start):(Window_options[k,]$End)])),1, function(x)(all(x))))
  }
  
  Windows_to_test  <- data.frame(Number_of_SNPs=integer(), Start=integer(), End=integer(), Number_Samples=integer()) 
  for(m in 2:Total_SNPS_in_gene){
    Windows_to_test <- rbind(Windows_to_test , subset(subset(Window_options, (Number_of_SNPs == m)), Number_Samples == max(Number_Samples)))
  }
  
  # Making a new VCF for each line in the table and make network and PDF  
  for(n in 1:nrow(Windows_to_test)){
    Window_SNP_count <- Windows_to_test[n,]$Number_of_SNPs
    Window_Start <- Windows_to_test[n,]$Start
    Window_End <- Windows_to_test[n,]$End
    Window_Samples<- Windows_to_test[n,]$Number_Samples
    gene_portion <- gene_investigated[,(Windows_to_test[n,]$Start):(Windows_to_test[n,]$End)]
    
    # Deleting all the samples with missing data in this portion of the gene 
    table_portion_SNP <- as.data.frame((is.phased(gene_portion)) & (!gene_portion[,]==".") & (!gene_portion[,]=="./."))
    row.names(table_portion_SNP) <- rownames(gene_portion)
    table_portion_SNP$All_good_data <- apply(table_portion_SNP, 1, function(x)(all(x)))
    gene_portion_only_phased <- gene_portion[which(table_portion_SNP$All_good_data == TRUE),]
    gene_portion_only_phased[] <- lapply(gene_portion_only_phased, function(x) if(is.factor(x)) factor(x) else x)
    
    ## Get the phased haplotypes and isolate both from the good individuals. Then transpose and rename. 
    Matrix_haplotypes <- haplotype(gene_portion_only_phased, locus = 1:length(gene_portion_only_phased), compress = FALSE,  check.phase = TRUE)
    Matrix_haplotypes <- t(Matrix_haplotypes)
    row.names(Matrix_haplotypes) <- rep(rownames(gene_portion_only_phased), each=2)
    DNAbin_individuals <- as.DNAbin(Matrix_haplotypes)
    Individual_haplotypes <- haplotype(DNAbin_individuals)
    Freq_by_type <- haploFreq(x = DNAbin_individuals, split = "~", what = 2,  haplo = Individual_haplotypes)      
    
    # Sanity control for portions of gene with 1 haplotype
    if(nrow(Individual_haplotypes)<2){
      pdf(paste("HapNet_",gene,"_", formatC(Window_SNP_count, width=3, flag="0") ,"_", formatC(Window_Start, width=3, flag="0"), "_", formatC(Window_End, width=3, flag="0") ,".pdf", sep = ""), width = 7, height = 7)
      plot.new()
      text(.5, .5, labels=":(", cex = 14, col='orange', srt=270)
      title(main = gene, sub = paste("GENE FAILED!   SNPs used=", Window_SNP_count,"  **Only 1 Haplotype**  Samples with haplotype=", nrow(gene_portion_only_phased)) )
      dev.off()
    } else {
      Network <- haploNet(h = Individual_haplotypes)
      Frequencies <- attr(Network, "freq")
      
      pdf(paste("HapNet_",gene,"_", formatC(Window_SNP_count, width=3, flag="0") ,"_", formatC(Window_Start, width=3, flag="0"), "_", formatC(Window_End, width=3, flag="0") ,".pdf", sep = ""), width = 7, height = 7)
      plot(Network, size = Frequencies, pie = Freq_by_type, labels = FALSE,  legend = c(-40,50), scale.ratio = 10, show.mutation = 3)
      title(main = gene, sub = paste("SNPs used=", Window_SNP_count," Start=", Window_Start,"End=", Window_End, "  SNPs in gene=", length(gene_investigated)," Phased samples=", Window_Samples ))
      #plot(Network, size = Frequencies, pie = Freq_by_type, labels = FALSE,  legend = c(-40,50), scale.ratio = 25, show.mutation = 3)
      #title(main = gene, sub = paste("SNPs used=", Window_SNP_count," Start=", Window_Start,"End=", Window_End, "  SNPs in gene=", length(gene_investigated)," Phased samples=", Window_Samples ))
      #plot(Network, size = Frequencies, pie = Freq_by_type, labels = FALSE,  legend = c(-40,50), scale.ratio = 50, show.mutation = 3)
      #title(main = gene, sub = paste("SNPs used=", Window_SNP_count," Start=", Window_Start,"End=", Window_End, "  SNPs in gene=", length(gene_investigated)," Phased samples=", Window_Samples ))
      dev.off()
    }
  }
}


