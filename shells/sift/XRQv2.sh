#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/sift/XRQv2
#SBATCH -J sftchr01
#SBATCH --partition=bigmemm
#SBATCH --mem=32000
#SBATCH -o /home/makman/Helianthus/outs/sift_annotate_helia_VQSR_chr01.out
#SBATCH -e /home/makman/Helianthus/outs/sift_annotate_helia_VQSR_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --time=72:00:00
#SBATCH --mail-type=All

module load python3/3.6.1
module unload perl
module load perlbrew
module unload gcc
module load gcc/4.9.3
gunzip *.vcf.gz
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr01_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr02_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr03_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr04_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr05_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr06_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr07_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr08_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr09_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr10_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr11_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr12_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr13_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr14_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr15_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr16_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
java -jar ../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr17_SNP_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus_XRQv2/HanXRQ_sift_database -r XRQv2/
