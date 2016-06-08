#!/bin/bash 
#SBATCH -D /clusterfs/vector/instrumentData/blackmanlab/snpEff/results
#SBATCH -J snpEff
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --mem=16000
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/snpEff/outs/snpEff_HA412_ch_separate.out
#SBATCH -e /global/home/users/makman/snpEff/outs/snpEff_HA412_ch_separate.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17
module load java
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch1.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom1_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch1_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch2.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom2_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch2_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch3.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom3_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch3_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch4.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom4_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch4_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch5.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom5_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch5_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch6.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom6_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch6_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch7.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom7_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch7_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch8.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom8_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch8_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch9.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom9_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch9_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch10.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom10_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch10_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch11.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom11_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch11_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch12.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom12_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch12_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch13.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom13_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch13_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch14.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom14_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch14_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch15.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom15_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch15_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch16.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom16_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch16_snpEff.ann.vcf
srun java -Xmx8g -jar /clusterfs/vector/instrumentData/blackmanlab/snpEff/snpEff.jar -stats ch17.html HA412 /clusterfs/vector/instrumentData/blackmanlab/vcf_HA412/chrom17_cultivated_filtered_ordered.vcf.gz > /clusterfs/vector/instrumentData/blackmanlab/snpEff/results/ch17_snpEff.ann.vcf
