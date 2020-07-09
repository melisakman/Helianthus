#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J snpEff
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=40:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_XRQv2.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_XRQv2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr01_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr01_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr02_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr02_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr03_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr03_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr04_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr04_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr05_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr05_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr06_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr06_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr07_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr07_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr08_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr08_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr09_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr09_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr10_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr10_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr11_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr11_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr12_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr12_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr13_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr13_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr14_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr14_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr15_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr15_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr16_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr16_SNP_INDEL.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr17_final.vcf.gz \
--select-type-to-include SNP \
--select-type-to-include INDEL \
-O chr17_SNP_INDEL.vcf.gz



zcat chr01_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr01.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr01_SNP_INDEL_snpeff.vcf.gz
zcat chr02_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr02.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr02_SNP_INDEL_snpeff.vcf.gz
zcat chr03_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr03.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr03_SNP_INDEL_snpeff.vcf.gz
zcat chr04_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr04.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr04_SNP_INDEL_snpeff.vcf.gz
zcat chr05_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr05.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr05_SNP_INDEL_snpeff.vcf.gz
zcat chr06_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr06.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr06_SNP_INDEL_snpeff.vcf.gz
zcat chr07_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr07.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr07_SNP_INDEL_snpeff.vcf.gz
zcat chr08_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr08.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr08_SNP_INDEL_snpeff.vcf.gz
zcat chr09_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr09.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr09_SNP_INDEL_snpeff.vcf.gz
zcat chr10_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr10.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr10_SNP_INDEL_snpeff.vcf.gz
zcat chr11_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr11.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr11_SNP_INDEL_snpeff.vcf.gz
zcat chr12_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr12.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr12_SNP_INDEL_snpeff.vcf.gz
zcat chr13_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr13.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr13_SNP_INDEL_snpeff.vcf.gz
zcat chr14_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr14.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr14_SNP_INDEL_snpeff.vcf.gz
zcat chr15_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr15.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr15_SNP_INDEL_snpeff.vcf.gz
zcat chr16_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr16.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr16_SNP_INDEL_snpeff.vcf.gz
zcat chr17_SNP_INDEL.vcf.gz | java -Xmx16g -jar /global/scratch/makman/GATK/final/snpeff/snpEff.jar -noLof -stats XRQv2_final_SNPEff_stats_chr17.html XRQv2 | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > snpeff/chr17_SNP_INDEL_snpeff.vcf.gz

