#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J 3chr03
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2_htc
#SBATCH --qos=savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/chr03_invariants_bcftools.out
#SBATCH -e /global/scratch/makman/GATK/outs/chr03_invariants_bcftools.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
TMPDIR=/clusterfs/rosalind/users/makman/temp
module load java


# zcat freebayes/no_mnp/freebayes_invariant_chr03_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes/no_mnp/freebayes_invariant_chr03_ref.vcf.gz
# # zcat samtools/samtools_invariant_chr03_dupsRemoved.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref"' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools/samtools_invariant_chr03_dupsRemoved_ref.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix freebayes/no_mnp/freebayes_invariant_chr03_ref.vcf.gz
# # /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix samtools/samtools_invariant_chr03_dupsRemoved_ref.vcf.gz
# # /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix gvcfs/genotyping/chr03_GATK_NoVar.vcf.gz
# 
# bcftools isec -n +2 -O z -p ../bcftools_isec/chr03_2_ref gvcfs/genotyping/chr03_GATK_NoVar.vcf.gz \
# freebayes/no_mnp/freebayes_invariant_chr03_ref.vcf.gz \
# samtools/samtools_invariant_chr03_dupsRemoved_ref.vcf.gz 

gunzip ../bcftools_isec/chr03_2_ref/0001.vcf.gz

python ~/git/Helianthus/shells/variant_calling/new/8-2+Set/2-extractSTFBSites/extract_GATK_variants.py ../bcftools_isec/chr03_2_ref/0001.vcf ../bcftools_isec/chr03_2_ref/sites.txt ../bcftools_isec/chr03_2_ref/FB_ST_sites_chr03.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ../bcftools_isec/chr03_2_ref/FB_ST_sites_chr03.vcf > ../bcftools_isec/chr03_2_ref/FB_ST_sites_chr03.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ../bcftools_isec/chr03_2_ref/0001.vcf > ../bcftools_isec/chr03_2_ref/0001.vcf.gz

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t ../bcftools_isec/chr03_2_ref/0000.vcf.gz ../bcftools_isec/chr03_2_ref/FB_ST_sites_chr03.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../bcftools_isec/chr03_2_ref/FB_ST_sites_chr03_sorted.vcf.gz


/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf ../bcftools_isec/chr03_2_ref/FB_ST_sites_chr03_sorted.vcf.gz

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
   -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
   -T CombineVariants \
   --variant ../bcftools_isec/chr03_2_ref/0000.vcf.gz \
   --variant ../bcftools_isec/chr03_2_ref/FB_ST_sites_chr03_sorted.vcf.gz \
   -o ../bcftools_isec/chr03_2_ref/chr03_2plus_ref.vcf \
   --assumeIdenticalSamples

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ../bcftools_isec/chr03_2_ref/chr03_2plus_ref.vcf > ../bcftools_isec/chr03_2_ref/chr03_2plus_ref.vcf.gz

rm ../bcftools_isec/chr03_2_ref/chr03_2plus_ref.vcf
rm ../bcftools_isec/chr03_2_ref/FB_ST_sites_chr03.vcf.gz
rm ../bcftools_isec/chr03_2_ref/FB_ST_sites_chr03.vcf
rm ../bcftools_isec/chr03_2_ref/0001.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf ../bcftools_isec/chr03_2_ref/chr03_2plus_ref.vcf.gz

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T VariantFiltration \
	-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
	-V ../bcftools_isec/chr03_2_ref/chr03_2plus_ref.vcf.gz \
	--filterExpression "QD < 2.0 || MQ < 40.0 || FS > 60.0 || SOR > 3.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
	--filterName "my_NO_VARIATION_filter" \
	-o ../bcftools_isec/chr03_2_ref/chr03_2plus_ref_filterInfo.vcf.gz  
	
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
	-V ../bcftools_isec/chr03_2_ref/chr03_2plus_ref.vcf.gz \
	--excludeFiltered \
	-o ../bcftools_isec/chr03_2_ref/chr03_2plus_ref_hardfiltered.vcf.gz 

zcat ../bcftools_isec/chr03_2_ref/chr03_2plus_ref_hardfiltered.vcf.gz | vcftools --vcf - --minDP 1 --max-missing 0.8 --maxDP 30 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../bcftools_isec/chr03_2_ref/chr03_2plus_ref_hardfiltered_secondfilter.vcf.gz 
