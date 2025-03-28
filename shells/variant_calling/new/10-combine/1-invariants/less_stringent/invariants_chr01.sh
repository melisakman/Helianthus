#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr01
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/chr01_invariants_bcftools.out
#SBATCH -e /global/scratch/makman/GATK/outs/chr01_invariants_bcftools.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load java


# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes/no_mnp/freebayes_invariant_chr01.vcf > freebayes/no_mnp/freebayes_invariant_chr01.vcf.gz
# zcat freebayes/no_mnp/freebayes_invariant_chr01_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/no_mnp/freebayes_invariant_chr01_ref.vcf.gz
# cat samtools/samtools_invariant_chr01_dupsRemoved.vcf | bcftools filter -g 5 -i 'TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools/samtools_invariant_chr01_dupsRemoved_ref.vcf.gz
# 
# # /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/no_mnp/freebayes_invariant_chr01_ref.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_invariant_chr01_dupsRemoved_ref.vcf.gz
# # /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr01_GATK_NoVar.vcf.gz
# # 
# bcftools isec -n +2 -O z -p ../bcftools_isec/chr01_2_ref gvcfs/genotyping/chr01_GATK_NoVar.vcf.gz \
# freebayes/no_mnp/freebayes_invariant_chr01_ref.vcf.gz \
# samtools/samtools_invariant_chr01_dupsRemoved_ref.vcf.gz 


# gunzip ../bcftools_isec/chr01_2_ref/0001.vcf.gz
# 
# python ~/git/Helianthus/shells/variant_calling/new/8-2+Set/2-extractSTFBSites/extract_GATK_variants.py ../bcftools_isec/chr01_2_ref/0001.vcf ../bcftools_isec/chr01_2_ref/sites.txt ../bcftools_isec/chr01_2_ref/FB_ST_sites_chr01.vcf
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ../bcftools_isec/chr01_2_ref/FB_ST_sites_chr01.vcf > ../bcftools_isec/chr01_2_ref/FB_ST_sites_chr01.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ../bcftools_isec/chr01_2_ref/0001.vcf > ../bcftools_isec/chr01_2_ref/0001.vcf.gz
# 
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t ../bcftools_isec/chr01_2_ref/0000.vcf.gz ../bcftools_isec/chr01_2_ref/FB_ST_sites_chr01.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../bcftools_isec/chr01_2_ref/FB_ST_sites_chr01_sorted.vcf.gz
# 
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf ../bcftools_isec/chr01_2_ref/FB_ST_sites_chr01_sorted.vcf.gz
# 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#    -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#    -T CombineVariants \
#    --variant ../bcftools_isec/chr01_2_ref/0000.vcf.gz \
#    --variant ../bcftools_isec/chr01_2_ref/FB_ST_sites_chr01_sorted.vcf.gz \
#    -o ../bcftools_isec/chr01_2_ref/chr01_2plus_ref.vcf \
#    --assumeIdenticalSamples
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ../bcftools_isec/chr01_2_ref/chr01_2plus_ref.vcf > ../bcftools_isec/chr01_2_ref/chr01_2plus_ref.vcf.gz
# 
# rm ../bcftools_isec/chr01_2_ref/chr01_2plus_ref.vcf
# rm ../bcftools_isec/chr01_2_ref/FB_ST_sites_chr01.vcf.gz
# rm ../bcftools_isec/chr01_2_ref/FB_ST_sites_chr01.vcf
# rm ../bcftools_isec/chr01_2_ref/0001.vcf
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf ../bcftools_isec/chr01_2_ref/chr01_2plus_ref.vcf.gz

# rm ../bcftools_isec/chr01_2_ref/chr01_2plus_ref.vcf.gz.tbi
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf ../bcftools_isec/chr01_2_ref/chr01_2plus_ref.vcf.gz
# 
# /global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" VariantAnnotator \
#    -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
#    -V ../bcftools_isec/chr01_2_ref/chr01_2plus_ref.vcf.gz \
#    -O ../bcftools_isec/chr01_2_ref/chr01_2plus_ref_annot.vcf.gz \
#    -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality
# 
# 
# 
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T VariantFiltration \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
# 	-V ../bcftools_isec/chr01_2_ref/chr01_2plus_ref_annot.vcf.gz \
# 	--filterExpression "QD < 2.0 || MQ < 40.0 || FS > 60.0 || SOR > 3.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
# 	--filterName "my_NO_VARIATION_filter" \
# 	-o ../bcftools_isec/chr01_2_ref/chr01_2plus_ref_filterInfo_QDdeneme.vcf.gz  
# 	
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
# 	-V ../bcftools_isec/chr01_2_ref/chr01_2plus_ref.vcf.gz \
# 	--excludeFiltered \
# 	-o ../bcftools_isec/chr01_2_ref/chr01_2plus_ref_hardfiltered_QDdeneme.vcf.gz 

# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p -f vcf ../bcftools_isec/chr01_2_ref/chr01_2plus_ref_hardfiltered_QDdeneme.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p -f vcf ../bcftools_isec/chr01_2_ref/chr01_2plus_ref_hardfiltered.vcf.gz

# bcftools isec -n +1 -O z -p ../bcftools_isec/chr01_2_ref_QDdeneme ../bcftools_isec/chr01_2_ref/chr01_2plus_ref_hardfiltered_QDdeneme.vcf.gz \
# ../bcftools_isec/chr01_2_ref/chr01_2plus_ref_hardfiltered.vcf.gz

zcat ../bcftools_isec/chr01_2_ref/chr01_2plus_ref_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../bcftools_isec/chr01_2_ref/chr01_2plus_ref_hardfiltered_secondfilter_25.vcf.gz 
