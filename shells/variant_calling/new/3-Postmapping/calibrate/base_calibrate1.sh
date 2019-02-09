#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J recal1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=170:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/base_cal1.out
#SBATCH -e /global/home/users/makman/GATK/outs/base_cal1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann06-seWY_sorted_markdup_readGroup.bam -BQSR ann06-seWY_recalibration_report.grp -o ann06-seWY_baseCal.bam
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann08-ceTN_sorted_markdup_readGroup.bam -BQSR ann08-ceTN_recalibration_report.grp -o ann08-ceTN_baseCal.bam
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann34-cwKS_sorted_markdup_readGroup.bam -BQSR ann34-cwKS_recalibration_report.grp -o ann34-cwKS_baseCal.bam
java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann39-ncNE_sorted_markdup_readGroup.bam -BQSR ann39-ncNE_recalibration_report.grp -o ann39-ncNE_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annIA_sorted_markdup_readGroup.bam -BQSR annIA_recalibration_report.grp -o annIA_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annKS_sorted_markdup_readGroup.bam -BQSR annKS_recalibration_report.grp -o annKS_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMex_A1516_sorted_markdup_readGroup.bam -BQSR annMex_A1516_recalibration_report.grp -o annMex_A1516_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMex_A1517_sorted_markdup_readGroup.bam -BQSR annMex_A1517_recalibration_report.grp -o annMex_A1517_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMex_A1572_sorted_markdup_readGroup.bam -BQSR annMex_A1572_recalibration_report.grp -o annMex_A1572_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMex_A1574_sorted_markdup_readGroup.bam -BQSR annMex_A1574_recalibration_report.grp -o annMex_A1574_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMex_Ann261_sorted_markdup_readGroup.bam -BQSR annMex_Ann261_recalibration_report.grp -o annMex_Ann261_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMO1W-39_sorted_markdup_readGroup.bam -BQSR annMO1W-39_recalibration_report.grp -o annMO1W-39_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annND1W-6_sorted_markdup_readGroup.bam -BQSR annND1W-6_recalibration_report.grp -o annND1W-6_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annSD1W-35_sorted_markdup_readGroup.bam -BQSR annSD1W-35_recalibration_report.grp -o annSD1W-35_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annSD2W-18_sorted_markdup_readGroup.bam -BQSR annSD2W-18_recalibration_report.grp -o annSD2W-18_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Anzac_Pueblo_sorted_markdup_readGroup.bam -BQSR Anzac_Pueblo_recalibration_report.grp -o Anzac_Pueblo_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Arikara_sorted_markdup_readGroup.bam -BQSR Arikara_recalibration_report.grp -o Arikara_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA124_sorted_markdup_readGroup.bam -BQSR HA124_recalibration_report.grp -o HA124_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA316_sorted_markdup_readGroup.bam -BQSR HA316_recalibration_report.grp -o HA316_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA404_sorted_markdup_readGroup.bam -BQSR HA404_recalibration_report.grp -o HA404_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA442_sorted_markdup_readGroup.bam -BQSR HA442_recalibration_report.grp -o HA442_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA89_sorted_markdup_readGroup.bam -BQSR HA89_recalibration_report.grp -o HA89_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Havasupai_sorted_markdup_readGroup.bam -BQSR Havasupai_recalibration_report.grp -o Havasupai_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Hidatsa1_sorted_markdup_readGroup.bam -BQSR Hidatsa1_recalibration_report.grp -o Hidatsa1_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Hopi_sorted_markdup_readGroup.bam -BQSR Hopi_recalibration_report.grp -o Hopi_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Hopi_PPN285_sorted_markdup_readGroup.bam -BQSR Hopi_PPN285_recalibration_report.grp -o Hopi_PPN285_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Hopi_real_sorted_markdup_readGroup.bam -BQSR Hopi_real_recalibration_report.grp -o Hopi_real_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Laguna_Pueblo_sorted_markdup_readGroup.bam -BQSR Laguna_Pueblo_recalibration_report.grp -o Laguna_Pueblo_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Mandan1_sorted_markdup_readGroup.bam -BQSR Mandan1_recalibration_report.grp -o Mandan1_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Mandan2_sorted_markdup_readGroup.bam -BQSR Mandan2_recalibration_report.grp -o Mandan2_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult3_sorted_markdup_readGroup.bam -BQSR MexCult3_recalibration_report.grp -o MexCult3_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult6_sorted_markdup_readGroup.bam -BQSR MexCult6_recalibration_report.grp -o MexCult6_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult7_sorted_markdup_readGroup.bam -BQSR MexCult7_recalibration_report.grp -o MexCult7_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Pueblo_sorted_markdup_readGroup.bam -BQSR Pueblo_recalibration_report.grp -o Pueblo_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA271_sorted_markdup_readGroup.bam -BQSR RHA271_recalibration_report.grp -o RHA271_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA309_sorted_markdup_readGroup.bam -BQSR RHA309_recalibration_report.grp -o RHA309_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA328_sorted_markdup_readGroup.bam -BQSR RHA328_recalibration_report.grp -o RHA328_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA408_sorted_markdup_readGroup.bam -BQSR RHA408_recalibration_report.grp -o RHA408_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA426_sorted_markdup_readGroup.bam -BQSR RHA426_recalibration_report.grp -o RHA426_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA857_sorted_markdup_readGroup.bam -BQSR RHA857_recalibration_report.grp -o RHA857_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Seneca_sorted_markdup_readGroup.bam -BQSR Seneca_recalibration_report.grp -o Seneca_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Zuni_sorted_markdup_readGroup.bam -BQSR Zuni_recalibration_report.grp -o Zuni_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann01-cwIA_sorted_markdup_readGroup.bam -BQSR ann01-cwIA_recalibration_report.grp -o ann01-cwIA_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann04-nwAR_sorted_markdup_readGroup.bam -BQSR ann04-nwAR_recalibration_report.grp -o ann04-nwAR_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann05-ccNM_sorted_markdup_readGroup.bam -BQSR ann05-ccNM_recalibration_report.grp -o ann05-ccNM_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann10-ccIL_sorted_markdup_readGroup.bam -BQSR ann10-ccIL_recalibration_report.grp -o ann10-ccIL_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann20-seAZ_sorted_markdup_readGroup.bam -BQSR ann20-seAZ_recalibration_report.grp -o ann20-seAZ_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann29-neSD_sorted_markdup_readGroup.bam -BQSR ann29-neSD_recalibration_report.grp -o ann29-neSD_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann44-ccCA_sorted_markdup_readGroup.bam -BQSR ann44-ccCA_recalibration_report.grp -o ann44-ccCA_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annKS1W-27_sorted_markdup_readGroup.bam -BQSR annKS1W-27_recalibration_report.grp -o annKS1W-27_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annNM_sorted_markdup_readGroup.bam -BQSR annNM_recalibration_report.grp -o annNM_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annSK1W-Q_sorted_markdup_readGroup.bam -BQSR annSK1W-Q_recalibration_report.grp -o annSK1W-Q_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annWY_sorted_markdup_readGroup.bam -BQSR annWY_recalibration_report.grp -o annWY_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Ari_broa_sorted_markdup_readGroup.bam -BQSR Ari_broa_recalibration_report.grp -o Ari_broa_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Ari_Mand_sorted_markdup_readGroup.bam -BQSR Ari_Mand_recalibration_report.grp -o Ari_Mand_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA433_sorted_markdup_readGroup.bam -BQSR HA433_recalibration_report.grp -o HA433_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult1_sorted_markdup_readGroup.bam -BQSR MexCult1_recalibration_report.grp -o MexCult1_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult14_sorted_markdup_readGroup.bam -BQSR MexCult14_recalibration_report.grp -o MexCult14_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult9_sorted_markdup_readGroup.bam -BQSR MexCult9_recalibration_report.grp -o MexCult9_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Paiute_sorted_markdup_readGroup.bam -BQSR Paiute_recalibration_report.grp -o Paiute_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA358_sorted_markdup_readGroup.bam -BQSR RHA358_recalibration_report.grp -o RHA358_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Se_purp_sorted_markdup_readGroup.bam -BQSR Se_purp_recalibration_report.grp -o Se_purp_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Se_strip_sorted_markdup_readGroup.bam -BQSR Se_strip_recalibration_report.grp -o Se_strip_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I Se137749_sorted_markdup_readGroup.bam -BQSR Se137749_recalibration_report.grp -o Se137749_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA207_sorted_markdup_readGroup.bam -BQSR HA207_recalibration_report.grp -o HA207_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA259_sorted_markdup_readGroup.bam -BQSR HA259_recalibration_report.grp -o HA259_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA314_sorted_markdup_readGroup.bam -BQSR HA314_recalibration_report.grp -o HA314_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA323_sorted_markdup_readGroup.bam -BQSR HA323_recalibration_report.grp -o HA323_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA380_sorted_markdup_readGroup.bam -BQSR HA380_recalibration_report.grp -o HA380_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA310_sorted_markdup_readGroup.bam -BQSR RHA310_recalibration_report.grp -o RHA310_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA324_sorted_markdup_readGroup.bam -BQSR RHA324_recalibration_report.grp -o RHA324_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA354_sorted_markdup_readGroup.bam -BQSR RHA354_recalibration_report.grp -o RHA354_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA362_sorted_markdup_readGroup.bam -BQSR RHA362_recalibration_report.grp -o RHA362_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I RHA397_sorted_markdup_readGroup.bam -BQSR RHA397_recalibration_report.grp -o RHA397_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I _sorted_markdup_readGroup.bam -BQSR _recalibration_report.grp -o _baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann1238_sorted_markdup_readGroup.bam -BQSR ann1238_recalibration_report.grp -o ann1238_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I ann28-swSK_sorted_markdup_readGroup.bam -BQSR ann28-swSK_recalibration_report.grp -o ann28-swSK_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annIA1W-1_sorted_markdup_readGroup.bam -BQSR annIA1W-1_recalibration_report.grp -o annIA1W-1_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annIA2W-17_sorted_markdup_readGroup.bam -BQSR annIA2W-17_recalibration_report.grp -o annIA2W-17_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annKS2W-35_sorted_markdup_readGroup.bam -BQSR annKS2W-35_recalibration_report.grp -o annKS2W-35_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I annMB1W-40_sorted_markdup_readGroup.bam -BQSR annMB1W-40_recalibration_report.grp -o annMB1W-40_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I HA821_sorted_markdup_readGroup.bam -BQSR HA821_recalibration_report.grp -o HA821_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I MexCult15_sorted_markdup_readGroup.bam -BQSR MexCult15_recalibration_report.grp -o MexCult15_baseCal.bam
# java -Djava.io.tmpdir=/global/scratch/makman/temp_files/ -Xmx64G -jar /clusterfs/rosalind/users/makman/GenomeAnalysisTK-3.7-0/GenomeAnalysisTK.jar -T PrintReads -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -I SF33_sorted_markdup_readGroup.bam -BQSR SF33_recalibration_report.grp -o SF33_baseCal.bam
# /
# /