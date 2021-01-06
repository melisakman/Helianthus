#!/bin/bash -l
#!/usr/bin/env perl
#SBATCH -D /home/makman/sift/VQSR_August2018/G6_90
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
# java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr01_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr02_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr03_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr04_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr05_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr06_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr07_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr08_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr09_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr10_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr11_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr12_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr13_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr14_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr15_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr16_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
java -jar ../../annotator/SIFT4G_Annotator_v2.4.jar -c -i chr17_final_snpeff.vcf -d /home/makman/sift/scripts_to_build_SIFT_db/test_files/Helianthus/HanXRQ_sift_database -r VQSR_August2018/G6_90/
