#!/bin/bash
#
#SBATCH --job-name=base_calib
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=24:00:00
#SBATCH --mem=32000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_readGroup2.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_readGroup2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load picard

# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HT013_SD2W-18.sort.dup.realign_nochr00_dedup.bam O=HT013_SD2W-18.sort.dup.realign_nochr00_dedup_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SD2W-18
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HT360_SD1W-35.sort.dup.realign_nochr00_dedup.bam O=HT360_SD1W-35.sort.dup.realign_nochr00_dedup_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SD1W-35
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HT172_SK1W-Q.sort.dup.realign_nochr00_dedup.bam O=HT172_SK1W-Q.sort.dup.realign_nochr00_dedup_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SK1W-Q
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HT55_IA2W-17.sort.dup.realign_nochr00_dedup.bam O=HT55_IA2W-17.sort.dup.realign_nochr00_dedup_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=IA2W-17
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HT211_MO1W-39.sort.dup.realign_nochr00_dedup.bam O=HT211_MO1W-39.sort.dup.realign_nochr00_dedup_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MO1W-39
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Q075_IA1W-1.sort.dup.realign_nochr00_dedup.bam O=Q075_IA1W-1.sort.dup.realign_nochr00_dedup_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=IA1W-1
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HT254_KS1W-27.sort.dup.realign_nochr00_dedup.bam O=HT254_KS1W-27.sort.dup.realign_nochr00_dedup_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=KS1W-27
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Q086_MB1W-40.sort.dup.realign_nochr00_dedup.bam O=Q086_MB1W-40.sort.dup.realign_nochr00_dedup_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MB1W-40
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=HT330_ND1W-6.sort.dup.realign_nochr00_dedup.bam O=HT330_ND1W-6.sort.dup.realign_nochr00_dedup_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ND1W-6
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=QPG4_KS2W-35.sort.dup.realign_nochr00_dedup.bam O=QPG4_KS2W-35.sort.dup.realign_nochr00_dedup_reGroups.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=KS2W-35