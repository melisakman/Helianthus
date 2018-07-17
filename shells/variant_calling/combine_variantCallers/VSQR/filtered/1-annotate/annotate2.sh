#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/
#SBATCH -J ann_chr02
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_annot_filt_chr02.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_annot_filt_chr02.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr02_filtered_2plus_GATK.vcf > chr02_filtered_2plus_GATK.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr02_filtered_2plus_GATK.vcf.gz  

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr02_filtered_2plus_GATK.vcf.gz \
   -o chr02_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
   -T VariantAnnotator \
   -V chr02_filtered_2plus_GATK.vcf.gz \
   -o chr02_filtered_2plus_GATK_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

