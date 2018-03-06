#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/gvcfs
#SBATCH -J hfilt
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=100:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/hardfilterapply_VC_MA.out
#SBATCH -e /global/home/users/makman/GATK/outs/hardfilterapply_VC_MA.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load gcc/4.8.5 
module load java
module load perl
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat VC_MA_combined_snps_info_hardfilter.vcf.gz VC_MA_combined_indel_info_hardfilter.vcf.gz | /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-sort | gzip -c > VC_MA_combined_all_info_hardfilter.vcf.gz


java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V VC_MA_combined_all_info_hardfilter.vcf.gz \
	--excludeFiltered \
	-o VC_MA_combined_all_hardfiltered.vcf.gz 
	