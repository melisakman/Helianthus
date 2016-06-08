# Helianthus

Here I am outlining a few things I have done with the datasets

## snpEff

This program takes vcf files and a genome database with various types of annotations as inputs and basically adds information to the vcf files whether the SNPs are located in exons, introns, intergenic, 5'UTR, 3' UTR etc. It also gives information on if the variants are synonymous or non-synonymous.
We start by constructing the databases first. Here I created databases for both HA412 and XRQ since they were not in the available databases. This is done on the vector cluster @ UCB with the scripts:
SNPeff_database_XRQ.sh
SNPeff_database_HA412.sh

Then I combined the vcf files that had 17 chromosomes separately by using GATK tools with the following script:
SNPeff_catVariants.sh

And finally the program is run on this combined file with the script:

SNPeff_HA412.sh

## BLAST

First I constructed databases for HA412, XRQ genomes and the set of markers on the combined scaffold map markers of Hulke et al., 2015. This is done with the script:
blast_databases.sh

This seems to be a likely way I will be taking from now on for mapping candidate genes.
