#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/gvcfs/genotyping
#SBATCH -J filchr02
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/hardfilter_SNP_chr02.out
#SBATCH -e /global/home/users/makman/GATK/outs/hardfilter_SNP_chr02.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load gcc/4.8.5 
module load java
module load gatk/4.0.1.2
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr02_GATK.vcf > chr02_GATK.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk IndexFeatureFile \
-F chr02_GATK.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V chr02_GATK.vcf.gz \
--select-type-to-include SNP \
-O chr02_GATK_SNP.vcf.gz 


/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" VariantFiltration \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V chr02_GATK_SNP.vcf.gz \
--filter-expression "QD < 2.0 || MQ < 40.0 || FS > 60.0 || SOR > 3.0 || MQRankSum < -12.5 || ReadPosRankSum < -8.0" \
--filter-name "my_SNP_filter" \
-O chr02_GATK_SNP_filterInfo.vcf.gz  
	
/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \	
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V chr02_GATK_SNP_filterInfo.vcf.gz \
--exclude-filtered \
-O chr02_GATK_SNP_hardfiltered.vcf.gz 
	
cp chr02_GATK_SNP_hardfiltered.vcf.gz /clusterfs/vector/instrumentData/blackmanlab/Helianthus/GATK_4Peter
