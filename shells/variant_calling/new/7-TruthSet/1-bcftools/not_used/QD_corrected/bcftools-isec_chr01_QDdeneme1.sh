#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr01
#SBATCH --account=fc_blackman
#SBATCH --partition=savio
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcf-isec_chr01_2.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcf-isec_chr01_2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java
module load gatk/4.0.1.2


# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" VariantAnnotator \
#    -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#    -V gvcfs/genotyping/chr01_GATK_SNP.vcf.gz \
#    -O gvcfs/genotyping/chr01_GATK_SNP_annot.vcf.gz \
#    -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff
# 
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" VariantFiltration \
# -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
# -V gvcfs/genotyping/chr01_GATK_SNP_annot.vcf.gz \
# --filter-expression "QD < 2.0 || MQ < 40.0 || FS > 60.0 || SOR > 3.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
# --filter-name "my_SNP_filter" \
# -O chr01_GATK_SNP_annot_filterInfo.vcf.gz
# 	
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
# -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
# -V chr01_GATK_SNP_annot_filterInfo.vcf.gz \
# --exclude-filtered \
# -O chr01_GATK_SNP_annot_filterInfo_hardfiltered.vcf.gz

# zcat chr01_GATK_SNP_annot_filterInfo_hardfiltered.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > chr01_GATK_SNP_annot_filterInfo_hardfiltered_secondfilter.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix chr01_GATK_SNP_annot_filterInfo_hardfiltered_secondfilter.vcf.gz
bcftools isec -n =3 -O z -p ../bcftools_isec/chr01_3_QD chr01_GATK_SNP_annot_filterInfo_hardfiltered_secondfilter.vcf.gz \
freebayes/no_mnp/freebayes_variants_chr01_filtered.vcf.gz \
samtools/samtools_variants_chr01_filtered.vcf.gz

