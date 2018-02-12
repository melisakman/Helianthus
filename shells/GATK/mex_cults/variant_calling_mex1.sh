#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/
#SBATCH -J varcal1
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=32000
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/variant_cal_mex1.out
#SBATCH -e /global/home/users/makman/GATK/outs/variant_cal_mex1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

/clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx32G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1516_sorted_markdup_readGroups_recal.bam -O Mex_A1516.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1517_sorted_markdup_readGroups_recal.bam -O Mex_A1517.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1572_sorted_markdup_readGroups_recal.bam -O Mex_A1572.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_A1574_sorted_markdup_readGroups_recal.bam -O Mex_A1574.g.vcf.gz -ERC GVCF
# /clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files/ -Xmx64G" HaplotypeCaller -R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa -I Mex_Ann261_sorted_markdup_readGroups_recal.bam -O Mex_Ann261.g.vcf.gz -ERC GVCF
