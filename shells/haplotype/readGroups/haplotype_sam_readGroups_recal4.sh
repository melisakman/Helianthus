#!/bin/bash
#
#SBATCH --job-name=regroup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=24:00:00
#SBATCH --mem=32000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_readGroup_wild4.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_readGroup_wild4.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load picard

# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=SD2W-18_dedup.bam O=SD2W-18_dedup_reGroups.bam RGPL=Illumina RGPU=1.1 RGLB=A RGSM=SD2W-18
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=SD1W-35_dedup.bam O=SD1W-35_dedup_reGroups.bam RGPL=Illumina RGPU=2.2 RGLB=B RGSM=SD1W-35
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=SK1W-Q_dedup.bam O=SK1W-Q_dedup_reGroups.bam RGPL=Illumina RGPU=3.3 RGLB=C RGSM=SK1W-Q
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=IA2W-17_dedup.bam O=IA2W-17_dedup_reGroups.bam RGPL=Illumina RGPU=4.4 RGLB=D RGSM=IA2W-17
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MO1W-39_dedup.bam O=MO1W-39_dedup_reGroups.bam RGPL=Illumina RGPU=5.5 RGLB=E RGSM=MO1W-39
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=IA1W-1_dedup.bam O=QIA1W-1_dedup_reGroups.bam RGPL=Illumina RGPU=6.6 RGLB=F RGSM=IA1W-1
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=KS1W-27_dedup.bam O=KS1W-27_dedup_reGroups.bam RGPL=Illumina RGPU=7.7 RGLB=G RGSM=KS1W-27
java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=MB1W-40_dedup.bam O=MB1W-40_dedup_reGroups.bam RGPL=Illumina RGPU=8.8 RGLB=H RGSM=MB1W-40
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=ND1W-6_dedup.bam O=ND1W-6_dedup_reGroups.bam RGPL=Illumina RGPU=9.9 RGLB=I RGSM=ND1W-6
# java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=KS2W-35_dedup.bam O=KS2W-35_dedup_reGroups.bam RGPL=Illumina RGPU=10.10 RGLB=J RGSM=KS2W-35