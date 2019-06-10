#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr16
#SBATCH --account=fc_blackman
#SBATCH --partition=savio
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr16_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr16_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java
module load gatk/4.0.1.2


/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" VariantAnnotator \
   -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
   -V gvcfs/genotyping/chr16_GATK_SNP.vcf.gz \
   -O gvcfs/genotyping/chr16_GATK_SNP_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" VariantFiltration \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V gvcfs/genotyping/chr16_GATK_SNP_annot.vcf.gz \
--filter-expression "QD < 2.0 || MQ < 40.0 || FS > 60.0 || SOR > 3.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
--filter-name "my_SNP_filter" \
-O chr16_GATK_SNP_annot_filterInfo.vcf.gz
	
/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V chr16_GATK_SNP_annot_filterInfo.vcf.gz \
--exclude-filtered \
-O chr16_GATK_SNP_annot_filterInfo_hardfiltered.vcf.gz



bcftools isec -n =3 -O z -p ../bcftools_isec/chr16_3_QD chr16_GATK_SNP_annot_filterInfo_hardfiltered.vcf.gz \
freebayes/no_mnp/freebayes_variants_chr16_filtered.vcf.gz \
samtools/samtools_variants_chr16_filtered.vcf.gz

