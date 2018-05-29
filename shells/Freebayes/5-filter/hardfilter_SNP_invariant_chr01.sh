#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/
#SBATCH -J filchr01S
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter_freebayes_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter_freebayes_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c ../freebayes_invariant_chr01_chunk1.vcf > freebayes_invariant_chr01_chunk1.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf freebayes_invariant_chr01_chunk1.vcf.gz  


java -Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx60G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T SelectVariants \
	-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
	-V freebayes_invariant_chr01_chunk1.vcf.gz \
	-selectType INDEL \
	-o freebayes_invariant_chr01_chunk1_GATKtest.vcf.gz 



bcftools filter -e "QD < 2.0 || FS > 200.0 || SOR > 10.0 || ReadPosRankSum < -20.0" -O z -o freebayes_invariant_chr01_chunk1_GATKtest_filtered.vcf.gz