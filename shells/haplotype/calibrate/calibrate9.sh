#!/bin/bash
#
#SBATCH --job-name=base_calib
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams/
#SBATCH --nodes=1
#SBATCH --time=20:00:00
#SBATCH --mem=64000
#SBATCH -o ../outs/calibrate_new_VC9.out
#SBATCH -e ../outs/calibrate_new_VC9.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
# 	-T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann08-ceTN_3e9_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann08-ceTN_3e9_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann08-ceTN_3e9_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann22-nwTX_3ee_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann22-nwTX_3ee_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann22-nwTX_3ee_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann34-cwKS_3f5_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann34-cwKS_3f5_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann34-cwKS_3f5_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann39-ncNE_3f6_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann39-ncNE_3f6_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann39-ncNE_3f6_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I annIA_401_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/annIA_401_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/annIA_401_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I annKS_402_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/annKS_402_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/annKS_402_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I annNM_405_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/annNM_405_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/annNM_405_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I annWY_406_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/annWY_406_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/annWY_406_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann04-nwAR_nochr00_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann04-nwAR_nochr00_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann04-nwAR_nochr00_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann05-ccNM_nochr00_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann05-ccNM_nochr00_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann05-ccNM_nochr00_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann10-ccIL_nochr00_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann10-ccIL_nochr00_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann10-ccIL_nochr00_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann20-seAZ_nochr00_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann20-seAZ_nochr00_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann20-seAZ_nochr00_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann28-swSK_nochr00_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann28-swSK_nochr00_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann28-swSK_nochr00_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann29-neSD_nochr00_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann29-neSD_nochr00_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann29-neSD_nochr00_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann44-ccCA_nochr00_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann44-ccCA_nochr00_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann44-ccCA_nochr00_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PI_531071_4d6_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PI_531071_4d6_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PI_531071_4d6_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN020_7_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN020_7_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN020_7_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN026_b_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN026_b_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN026_b_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN035_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN035_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN035_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN069_16_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN069_16_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN069_16_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN072_19_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN072_19_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN072_19_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN107_28_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN107_28_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN107_28_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN153_34_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN153_34_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN153_34_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN173_3e_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN173_3e_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN173_3e_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN179_40_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN179_40_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN179_40_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN185_44_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN185_44_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN185_44_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN191_46_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN191_46_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN191_46_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN203_2f4_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN203_2f4_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN203_2f4_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN237_396_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN237_396_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN237_396_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN240_397_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN240_397_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN240_397_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN255_3ae_HanXRQ_nochr00_dedup.bam \
#      \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN255_3ae_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN255_3ae_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN262_3b7_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN262_3b7_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN262_3b7_HanXRQ_nochr00_dedup_recab.bam
java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
    -T PrintReads \
    -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
    -I SF_33_177_HanXRQ_nochr00_dedup.bam \
    -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/SF_33_177_HanXRQ_nochr00_dedup.table \
	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/SF_33_177_HanXRQ_nochr00_dedup_recab.bam
java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
    -T PrintReads \
    -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
    -I Anzac_Pueblo_combined_dedup.bam \
    -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Anzac_Pueblo_combined_dedup.table \
	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Anzac_Pueblo_combined_dedup_recab.bam
java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
    -T PrintReads \
    -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
    -I Arikara_combined_dedup.bam \
    -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Arikara_combined_dedup.table \
	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Arikara_combined_dedup_recab.bam
java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
    -T PrintReads \
    -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
    -I Havasupai_combined_dedup.bam \
    -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Havasupai_combined_dedup.table \
	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Havasupai_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I Hidatsa1_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Hidatsa1_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Hidatsa1_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I Hopi_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Hopi_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Hopi_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I Hopi_1_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Hopi_1_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Hopi_1_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I Laguna_Pueblo_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Laguna_Pueblo_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Laguna_Pueblo_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor1/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I Mandan2_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Mandan2_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Mandan2_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor11/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I MexCult1_513_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/MexCult1_513_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/MexCult1_513_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor12/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I MexCult14_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/MexCult14_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/MexCult14_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor13/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I MexCult15_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/MexCult15_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/MexCult15_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor14/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I MexCult3_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/MexCult3_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/MexCult3_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor15/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I MexCult6_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/MexCult6_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/MexCult6_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor16/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I MexCult7_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/MexCult7_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/MexCult7_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor17/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I MexCult9_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/MexCult9_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/MexCult9_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor18/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I Pueblo_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Pueblo_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Pueblo_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor19/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I Seneca_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Seneca_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Seneca_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor20/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I Zuni_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/Zuni_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/Zuni_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor21/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN046_78_HanXRQ_nochr00_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN046_78_HanXRQ_nochr00_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN046_78_HanXRQ_nochr00_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor22/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I PPN083_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/PPN083_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/PPN083_combined_dedup_recab.bam
# java -Djava.io.tmpdir=/clusterfs/vector/scratch/makman/tempor22/ -Xmx32G -jar /clusterfs/vector/scratch/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar \
#     -T PrintReads \
#     -R /clusterfs/vector/scratch/makman/haplotype_networks/HanXRQr1.0-20151230_no_Chr00.fasta \
#     -I ann01-cwIA_nochr00_combined_dedup.bam \
#     -BQSR /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/tables/ann01-cwIA_nochr00_combined_dedup.table \
# 	-o /clusterfs/vector/scratch/makman/haplotype_networks/bams/bam_recal/ann01-cwIA_nochr00_combined_dedup_recab.bam
