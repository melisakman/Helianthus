#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs/gvcf
#SBATCH -J hfiltMin
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/hardfilter_VC_MA_indel_ethno.out
#SBATCH -e /global/home/users/makman/GATK/outs/hardfilter_VC_MA_indel_ethno.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java
module load perl
module load gcc/4.8.5 

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VC_MA_combined_ethno.vcf.gz \
	-selectType INDEL \
	-o VC_MA_combined_indel_ethno.vcf 

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c VC_MA_combined_indel_ethno.vcf > VC_MA_combined_indel_ethno.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf VC_MA_combined_indel_ethno.vcf.gz

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T VariantFiltration \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VC_MA_combined_indel_ethno.vcf.gz \
	--filterExpression "QD < 2.0 || FS > 60.0 || MQ < 40.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
	--filterName "my_snp_filter" \
	-o VC_MA_combined_indel_ethno_hardfilterInfo.vcf.gz 

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VC_MA_combined_indel_ethno_hardfilterInfo.vcf.gz \
	--excludeFiltered \
	-o VC_MA_combined_indel_ethno_hardfiltered.vcf.gz 
module load bio/vcftools/0.1.15

zcat VC_MA_combined_indel_ethno_hardfiltered.vcf.gz | /clusterfs/rosalind/users/makman/bcftools/bcftools filter -g 5 -e 'REF="N"'| vcftools --gzvcf - --maf 0.01 --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | gzip -c > VC_MA_combined_indel_ethno_hardfiltered_filtered.vcf.gz
