#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J filchr09
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/hardfilter_VCMA_indel_chr09_invariant.out
#SBATCH -e /global/home/users/makman/GATK/outs/hardfilter_VCMA_indel_chr09_invariant.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load gcc/4.8.5 
module load java
module load gatk/4.0.1.2
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VCMA_chr09.vcf.gz \
	-selectType INDEL \
	-o VCMA_chr09_indel.vcf.gz 


java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T VariantFiltration \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VCMA_chr09_indel.vcf.gz \
	--filterExpression "QD < 2.0 || FS > 200.0 || SOR > 10.0 || ReadPosRankSum < -20.0" \
	--filterName "my_indel_filter" \
	-o VCMA_chr09_indel_filterInfo.vcf.gz  
	
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VCMA_chr09_indel_filterInfo.vcf.gz \
	--excludeFiltered \
	-o VCMA_chr09_indel_hardfiltered.vcf.gz 

