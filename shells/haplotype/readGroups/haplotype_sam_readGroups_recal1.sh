#!/bin/bash
#
#SBATCH --job-name=base_calib
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal
#SBATCH --nodes=1
#SBATCH --time=24:00:00
#SBATCH --mem=32000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_readGroup_recal.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_readGroup_recal.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load picard

java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=SD2W-18_dedup_recal.bam O=SD2W-18_dedup_recal_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SD2W-18
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=SD1W-35_dedup_recal.bam O=SD1W-35_dedup_recal_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SD1W-35
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=SK1W-Q_dedup_recal.bam O=SK1W-Q_dedup_recal_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SK1W-Q
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=IA2W-17_dedup_recal.bam O=IA2W-17_dedup_recal_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=IA2W-17
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MO1W-39_dedup_recal.bam O=MO1W-39_dedup_recal_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MO1W-39
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=IA1W-1_dedup_recal.bam O=QIA1W-1_dedup_recal_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=IA1W-1
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=KS1W-27_dedup_recal.bam O=KS1W-27_dedup_recal_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=KS1W-27
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MB1W-40_dedup_recal.bam O=MB1W-40_dedup_recal_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MB1W-40
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ND1W-6_dedup_recal.bam O=ND1W-6_dedup_recal_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ND1W-6
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=KS2W-35_dedup_recal.bam O=KS2W-35_dedup_recal_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=KS2W-35