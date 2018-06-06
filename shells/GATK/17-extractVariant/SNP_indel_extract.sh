#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/secondFilter/
#SBATCH -J both_chr01
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VCMA_SNP_indel.out
#SBATCH -e /global/home/users/makman/GATK/outs/VCMA_SNP_indel.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load gcc/4.8.5 
module load java
module load gatk/4.0.1.2
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

gunzip vcf-isec_chr01/chr01_intersect.vcf.gz
gunzip vcf-isec_chr02/chr02_intersect.vcf.gz
gunzip vcf-isec_chr03/chr03_intersect.vcf.gz
gunzip vcf-isec_chr04/chr04_intersect.vcf.gz
gunzip vcf-isec_chr05/chr05_intersect.vcf.gz
gunzip vcf-isec_chr06/chr06_intersect.vcf.gz
gunzip vcf-isec_chr07/chr07_intersect.vcf.gz
gunzip vcf-isec_chr08/chr08_intersect.vcf.gz
gunzip vcf-isec_chr09/chr09_intersect.vcf.gz
gunzip vcf-isec_chr10/chr10_intersect.vcf.gz
gunzip vcf-isec_chr11/chr11_intersect.vcf.gz
gunzip vcf-isec_chr12/chr12_intersect.vcf.gz
gunzip vcf-isec_chr13/chr13_intersect.vcf.gz
gunzip vcf-isec_chr14/chr14_intersect.vcf.gz
gunzip vcf-isec_chr15/chr15_intersect.vcf.gz
gunzip vcf-isec_chr16/chr16_intersect.vcf.gz
gunzip vcf-isec_chr17/chr17_intersect.vcf.gz

python ./extract_variants.py vcf-isec_chr01/chr01_intersect.vcf vcf-isec_chr01/chr01_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr02/chr02_intersect.vcf vcf-isec_chr02/chr02_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr03/chr03_intersect.vcf vcf-isec_chr03/chr03_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr04/chr04_intersect.vcf vcf-isec_chr04/chr04_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr05/chr05_intersect.vcf vcf-isec_chr05/chr05_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr06/chr06_intersect.vcf vcf-isec_chr06/chr06_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr07/chr07_intersect.vcf vcf-isec_chr07/chr07_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr08/chr08_intersect.vcf vcf-isec_chr08/chr08_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr09/chr09_intersect.vcf vcf-isec_chr09/chr09_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr10/chr10_intersect.vcf vcf-isec_chr10/chr10_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr11/chr11_intersect.vcf vcf-isec_chr11/chr11_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr12/chr12_intersect.vcf vcf-isec_chr12/chr12_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr13/chr13_intersect.vcf vcf-isec_chr13/chr13_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr14/chr14_intersect.vcf vcf-isec_chr14/chr14_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr15/chr15_intersect.vcf vcf-isec_chr15/chr15_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr16/chr16_intersect.vcf vcf-isec_chr16/chr16_intersect_variantsOnly.vcf 
python ./extract_variants.py vcf-isec_chr17/chr17_intersect.vcf vcf-isec_chr17/chr17_intersect_variantsOnly.vcf 

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr01/chr01_intersect_variantsOnly.vcf > vcf-isec_chr01/chr01_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr02/chr02_intersect_variantsOnly.vcf > vcf-isec_chr02/chr02_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr03/chr03_intersect_variantsOnly.vcf > vcf-isec_chr03/chr03_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr04/chr04_intersect_variantsOnly.vcf > vcf-isec_chr04/chr04_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr05/chr05_intersect_variantsOnly.vcf > vcf-isec_chr05/chr05_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr06/chr06_intersect_variantsOnly.vcf > vcf-isec_chr06/chr06_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr07/chr07_intersect_variantsOnly.vcf > vcf-isec_chr07/chr07_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr08/chr08_intersect_variantsOnly.vcf > vcf-isec_chr08/chr08_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr09/chr09_intersect_variantsOnly.vcf > vcf-isec_chr09/chr09_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr10/chr10_intersect_variantsOnly.vcf > vcf-isec_chr10/chr10_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr11/chr11_intersect_variantsOnly.vcf > vcf-isec_chr11/chr11_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr12/chr12_intersect_variantsOnly.vcf > vcf-isec_chr12/chr12_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr13/chr13_intersect_variantsOnly.vcf > vcf-isec_chr13/chr13_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr14/chr14_intersect_variantsOnly.vcf > vcf-isec_chr14/chr14_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr15/chr15_intersect_variantsOnly.vcf > vcf-isec_chr15/chr15_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr16/chr16_intersect_variantsOnly.vcf > vcf-isec_chr16/chr16_intersect_variantsOnly.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c vcf-isec_chr17/chr17_intersect_variantsOnly.vcf > vcf-isec_chr17/chr17_intersect_variantsOnly.vcf.gz

# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr01/chr01_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr01/VCMA_chr01_SNP_indel.vcf.gz 
# 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr02/chr02_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr02/VCMA_chr02_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr03/chr03_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr03/VCMA_chr03_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr04/chr04_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr04/VCMA_chr04_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr05/chr05_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr05/VCMA_chr05_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr06/chr06_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr06/VCMA_chr06_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr07/chr07_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr07/VCMA_chr07_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr08/chr08_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr08/VCMA_chr08_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr09/chr09_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr09/VCMA_chr09_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr10/chr10_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr10/VCMA_chr10_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr11/chr11_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr11/VCMA_chr11_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr12/chr12_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr12/VCMA_chr12_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr13/chr13_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr13/VCMA_chr13_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr14/chr14_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr14/VCMA_chr14_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr15/chr15_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr15/VCMA_chr15_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr16/chr16_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr16/VCMA_chr16_SNP_indel.vcf.gz 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V vcf-isec_chr17/chr17_intersect.vcf.gz \
# 	-selectType SNP -selectType INDEL \
# 	-o vcf-isec_chr17/VCMA_chr17_SNP_indel.vcf.gz 
