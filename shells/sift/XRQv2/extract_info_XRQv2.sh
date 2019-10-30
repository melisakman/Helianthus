#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/sift/XRQv2/XRQv2/
#SBATCH -J sft
#SBATCH --partition=bigmemm
#SBATCH --mem=32000
#SBATCH -o /home/makman/Helianthus/outs/sift_extractinfo_XRQv2.out
#SBATCH -e /home/makman/Helianthus/outs/sift_extractinfo_XRQv2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --time=72:00:00
#SBATCH --mail-type=All

module load python3/3.6.1


python extract_info_XRQv2.py chr01_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr01_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr02_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr02_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr03_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr03_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr04_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr04_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr05_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr05_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr06_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr06_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr07_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr07_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr08_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr08_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr09_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr09_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr10_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr10_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr11_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr11_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr12_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr12_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr13_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr13_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr14_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr14_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr15_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr15_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr16_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr16_SNP_INDEL_snpeff_SIFTpredictions.txt
python extract_info_XRQv2.py chr17_SNP_INDEL_snpeff_SIFTpredictions.vcf XRQv2_genes_1.txt chr17_SNP_INDEL_snpeff_SIFTpredictions.txt