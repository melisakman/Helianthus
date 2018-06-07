#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J snp_indel
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VCMA_SNP_indel_3.out
#SBATCH -e /global/home/users/makman/GATK/outs/VCMA_SNP_indel_3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load gcc/4.8.5 
module load java
module load gatk/4.0.1.2
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

# gunzip vcf-isec_chr01_3/chr01_intersect_3.vcf.gz
# gunzip vcf-isec_chr02_3/chr02_intersect_3.vcf.gz
# gunzip vcf-isec_chr03_3/chr03_intersect_3.vcf.gz
# gunzip vcf-isec_chr04_3/chr04_intersect_3.vcf.gz
# gunzip vcf-isec_chr05_3/chr05_intersect_3.vcf.gz
# gunzip vcf-isec_chr06_3/chr06_intersect_3.vcf.gz
# gunzip vcf-isec_chr07_3/chr07_intersect_3.vcf.gz
# gunzip vcf-isec_chr08_3/chr08_intersect_3.vcf.gz
# gunzip vcf-isec_chr09_3/chr09_intersect_3.vcf.gz
# gunzip vcf-isec_chr10_3/chr10_intersect_3.vcf.gz
# gunzip vcf-isec_chr11_3/chr11_intersect_3.vcf.gz
# gunzip vcf-isec_chr12_3/chr12_intersect_3.vcf.gz
# gunzip vcf-isec_chr13_3/chr13_intersect_3.vcf.gz
# gunzip vcf-isec_chr14_3/chr14_intersect_3.vcf.gz
# gunzip vcf-isec_chr15_3/chr15_intersect_3.vcf.gz
# gunzip vcf-isec_chr16_3/chr16_intersect_3.vcf.gz
# gunzip vcf-isec_chr17_3/chr17_intersect_3.vcf.gz
# 
# python ./extract_variants.py vcf-isec_chr01_3/chr01_intersect_3.vcf vcf-isec_chr01_3/chr01_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr02_3/chr02_intersect_3.vcf vcf-isec_chr02_3/chr02_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr03_3/chr03_intersect_3.vcf vcf-isec_chr03_3/chr03_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr04_3/chr04_intersect_3.vcf vcf-isec_chr04_3/chr04_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr05_3/chr05_intersect_3.vcf vcf-isec_chr05_3/chr05_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr06_3/chr06_intersect_3.vcf vcf-isec_chr06_3/chr06_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr07_3/chr07_intersect_3.vcf vcf-isec_chr07_3/chr07_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr08_3/chr08_intersect_3.vcf vcf-isec_chr08_3/chr08_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr09_3/chr09_intersect_3.vcf vcf-isec_chr09_3/chr09_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr10_3/chr10_intersect_3.vcf vcf-isec_chr10_3/chr10_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr11_3/chr11_intersect_3.vcf vcf-isec_chr11_3/chr11_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr12_3/chr12_intersect_3.vcf vcf-isec_chr12_3/chr12_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr13_3/chr13_intersect_3.vcf vcf-isec_chr13_3/chr13_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr14_3/chr14_intersect_3.vcf vcf-isec_chr14_3/chr14_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr15_3/chr15_intersect_3.vcf vcf-isec_chr15_3/chr15_intersect_3_variantsOnly.vcf 
# python ./extract_variants.py vcf-isec_chr16_3/chr16_intersect_3.vcf vcf-isec_chr16_3/chr16_intersect_3_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr17_3/chr17_intersect_3.vcf vcf-isec_chr17_3/chr17_intersect_3_variantsOnly.vcf 
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr01_3/chr01_intersect_3_variantsOnly.vcf > vcf-isec_chr01_3/chr01_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr02_3/chr02_intersect_3_variantsOnly.vcf > vcf-isec_chr02_3/chr02_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr03_3/chr03_intersect_3_variantsOnly.vcf > vcf-isec_chr03_3/chr03_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr04_3/chr04_intersect_3_variantsOnly.vcf > vcf-isec_chr04_3/chr04_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr05_3/chr05_intersect_3_variantsOnly.vcf > vcf-isec_chr05_3/chr05_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr06_3/chr06_intersect_3_variantsOnly.vcf > vcf-isec_chr06_3/chr06_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr07_3/chr07_intersect_3_variantsOnly.vcf > vcf-isec_chr07_3/chr07_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr08_3/chr08_intersect_3_variantsOnly.vcf > vcf-isec_chr08_3/chr08_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr09_3/chr09_intersect_3_variantsOnly.vcf > vcf-isec_chr09_3/chr09_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr10_3/chr10_intersect_3_variantsOnly.vcf > vcf-isec_chr10_3/chr10_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr11_3/chr11_intersect_3_variantsOnly.vcf > vcf-isec_chr11_3/chr11_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr12_3/chr12_intersect_3_variantsOnly.vcf > vcf-isec_chr12_3/chr12_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr13_3/chr13_intersect_3_variantsOnly.vcf > vcf-isec_chr13_3/chr13_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr14_3/chr14_intersect_3_variantsOnly.vcf > vcf-isec_chr14_3/chr14_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr15_3/chr15_intersect_3_variantsOnly.vcf > vcf-isec_chr15_3/chr15_intersect_3_variantsOnly.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr16_3/chr16_intersect_3_variantsOnly.vcf > vcf-isec_chr16_3/chr16_intersect_3_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr17_3/chr17_intersect_3_variantsOnly.vcf > vcf-isec_chr17_3/chr17_intersect_3_variantsOnly.vcf.gz

# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr01_3/chr01_intersect_3.vcf > vcf-isec_chr01_3/chr01_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr02_3/chr02_intersect_3.vcf > vcf-isec_chr02_3/chr02_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr03_3/chr03_intersect_3.vcf > vcf-isec_chr03_3/chr03_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr04_3/chr04_intersect_3.vcf > vcf-isec_chr04_3/chr04_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr05_3/chr05_intersect_3.vcf > vcf-isec_chr05_3/chr05_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr06_3/chr06_intersect_3.vcf > vcf-isec_chr06_3/chr06_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr07_3/chr07_intersect_3.vcf > vcf-isec_chr07_3/chr07_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr08_3/chr08_intersect_3.vcf > vcf-isec_chr08_3/chr08_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr09_3/chr09_intersect_3.vcf > vcf-isec_chr09_3/chr09_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr10_3/chr10_intersect_3.vcf > vcf-isec_chr10_3/chr10_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr11_3/chr11_intersect_3.vcf > vcf-isec_chr11_3/chr11_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr12_3/chr12_intersect_3.vcf > vcf-isec_chr12_3/chr12_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr13_3/chr13_intersect_3.vcf > vcf-isec_chr13_3/chr13_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr14_3/chr14_intersect_3.vcf > vcf-isec_chr14_3/chr14_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr15_3/chr15_intersect_3.vcf > vcf-isec_chr15_3/chr15_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr16_3/chr16_intersect_3.vcf > vcf-isec_chr16_3/chr16_intersect_3.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr17_3/chr17_intersect_3.vcf > vcf-isec_chr17_3/chr17_intersect_3.vcf.gz
# 
# rm vcf-isec_chr01_3/chr01_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr02_3/chr02_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr03_3/chr03_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr04_3/chr04_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr05_3/chr05_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr06_3/chr06_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr07_3/chr07_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr08_3/chr08_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr09_3/chr09_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr10_3/chr10_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr11_3/chr11_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr12_3/chr12_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr13_3/chr13_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr14_3/chr14_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr15_3/chr15_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr16_3/chr16_intersect_3_variantsOnly.vcf
# rm vcf-isec_chr17_3/chr17_intersect_3_variantsOnly.vcf


# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr01_3/chr01_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr01_3/VCMA_chr01_SNP_indel.vcf.gz 
# 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr02_3/chr02_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr02_3/VCMA_chr02_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr03_3/chr03_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr03_3/VCMA_chr03_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr04_3/chr04_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr04_3/VCMA_chr04_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr05_3/chr05_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr05_3/VCMA_chr05_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr06_3/chr06_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr06_3/VCMA_chr06_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr07_3/chr07_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr07_3/VCMA_chr07_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr08_3/chr08_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr08_3/VCMA_chr08_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr09_3/chr09_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr09_3/VCMA_chr09_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr10_3/chr10_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr10_3/VCMA_chr10_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr11_3/chr11_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr11_3/VCMA_chr11_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr12_3/chr12_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr12_3/VCMA_chr12_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr13_3/chr13_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr13_3/VCMA_chr13_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr14_3/chr14_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr14_3/VCMA_chr14_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr15_3/chr15_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr15_3/VCMA_chr15_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr16_3/chr16_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr16_3/VCMA_chr16_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr17_3/chr17_intersect_3.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr17_3/VCMA_chr17_SNP_indel.vcf.gz 
