#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J ann_unfilt
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_annot_unfilt.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_annot_unfilt.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr01_unfiltered_2plus_GATK.vcf > chr01_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr02_unfiltered_2plus_GATK.vcf > chr02_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr03_unfiltered_2plus_GATK.vcf > chr03_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr04_unfiltered_2plus_GATK.vcf > chr04_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr05_unfiltered_2plus_GATK.vcf > chr05_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr06_unfiltered_2plus_GATK.vcf > chr06_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr07_unfiltered_2plus_GATK.vcf > chr07_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr08_unfiltered_2plus_GATK.vcf > chr08_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr09_unfiltered_2plus_GATK.vcf > chr09_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr10_unfiltered_2plus_GATK.vcf > chr10_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr11_unfiltered_2plus_GATK.vcf > chr11_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr12_unfiltered_2plus_GATK.vcf > chr12_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr13_unfiltered_2plus_GATK.vcf > chr13_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr14_unfiltered_2plus_GATK.vcf > chr14_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr15_unfiltered_2plus_GATK.vcf > chr15_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr16_unfiltered_2plus_GATK.vcf > chr16_unfiltered_2plus_GATK.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr17_unfiltered_2plus_GATK.vcf > chr17_unfiltered_2plus_GATK.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr01_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr02_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr03_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr04_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr05_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr06_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr07_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr08_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr09_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr10_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr11_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr12_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr13_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr14_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr15_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr16_unfiltered_2plus_GATK.vcf.gz  
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr17_unfiltered_2plus_GATK.vcf.gz  

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr01_unfiltered_2plus_GATK.vcf.gz \
   -o chr01_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr02_unfiltered_2plus_GATK.vcf.gz \
   -o chr02_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr03_unfiltered_2plus_GATK.vcf.gz \
   -o chr03_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr04_unfiltered_2plus_GATK.vcf.gz \
   -o chr04_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr05_unfiltered_2plus_GATK.vcf.gz \
   -o chr05_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr06_unfiltered_2plus_GATK.vcf.gz \
   -o chr06_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr07_unfiltered_2plus_GATK.vcf.gz \
   -o chr07_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr08_unfiltered_2plus_GATK.vcf.gz \
   -o chr08_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr09_unfiltered_2plus_GATK.vcf.gz \
   -o chr09_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr10_unfiltered_2plus_GATK.vcf.gz \
   -o chr10_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr11_unfiltered_2plus_GATK.vcf.gz \
   -o chr11_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr12_unfiltered_2plus_GATK.vcf.gz \
   -o chr12_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr13_unfiltered_2plus_GATK.vcf.gz \
   -o chr13_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr14_unfiltered_2plus_GATK.vcf.gz \
   -o chr14_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr15_unfiltered_2plus_GATK.vcf.gz \
   -o chr15_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr16_unfiltered_2plus_GATK.vcf.gz \
   -o chr16_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr17_unfiltered_2plus_GATK.vcf.gz \
   -o chr17_unfiltered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

