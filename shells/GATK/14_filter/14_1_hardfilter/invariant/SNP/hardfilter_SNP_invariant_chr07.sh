#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/invariants/
#SBATCH -J filchr07S
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/hardfilter_VCMA_SNP_chr07_invariant.out
#SBATCH -e /global/home/users/makman/GATK/outs/hardfilter_VCMA_SNP_chr07_invariant.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load gcc/4.8.5 
module load java
module load gatk/4.0.1.2
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VCMA_chr07.vcf.gz \
	-selectType SNP \
	-o VCMA_chr07_SNP.vcf.gz 

/clusterfs/vector/home/groups/software/sl-7.x86_64/modules/gatk-4.0.1.2/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G" VariantFiltration \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VCMA_chr07_SNP.vcf.gz \
	--missing-values-evaluate-as-failing \
	--filterExpression "QD < 2.0 || MQ < 40.0 || FS > 60.0 || SOR > 3.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
	--filterName "my_SNP_filter" \
	-o VCMA_chr07_SNP_filterInfo.vcf.gz  
	
java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VCMA_chr07_SNP_filterInfo.vcf.gz \
	--excludeFiltered \
	-o VCMA_chr07_SNP_hardfiltered.vcf.gz 

