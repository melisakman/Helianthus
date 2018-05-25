#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/filter_test
#SBATCH -J filter_test
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=800:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/hardfilter_freebayes_GATK_test.out
#SBATCH -e /global/home/users/makman/GATK/outs/hardfilter_freebayes_GATK_test.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load gcc/4.8.5 
module load java
module load gatk/4.0.1.2
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ../freebayes_invariant_chr01_chunk1.vcf > freebayes_invariant_chr01_chunk1.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr01_chunk1.vcf.gz  


java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V freebayes_invariant_chr01_chunk1.vcf.gz \
	-selectType INDEL \
	-o freebayes_invariant_chr01_chunk1_GATKtest.vcf.gz 


# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T VariantFiltration \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V freebayes_invariant_chr01_chunk1_GATKtest.vcf.gz \
# 	--filterExpression "QD < 2.0 || FS > 200.0 || SOR > 10.0 || ReadPosRankSum < -20.0" \
# 	--filterName "my_indel_filter" \
# 	-o freebayes_invariant_chr01_chunk1_GATKtest_filterInfo.vcf.gz 
# 	
# java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
# 	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
# 	-V freebayes_invariant_chr01_chunk1_GATKtest_filterInfo.vcf.gz \
# 	--excludeFiltered \
# 	-o freebayes_invariant_chr01_chunk1_GATKtest_filtered.vcf.gz

