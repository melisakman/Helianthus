#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/
#SBATCH -J trim14
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=54000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/trim14a1.out
#SBATCH -e /global/home/users/makman/GATK/outs/trim14a1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
module load java

# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann01-cwIA_R1.fastq.gz ann01-cwIA_R2.fastq.gz ann01-cwIA_R1_trimmed_fastq.gz ann01-cwIA_R1_unpaired.fastq.gz ann01-cwIA_R2_trimmed_fastq.gz ann01-cwIA_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann04-nwAR_R1.fastq.gz ann04-nwAR_R2.fastq.gz ann04-nwAR_R1_trimmed_fastq.gz ann04-nwAR_R1_unpaired.fastq.gz ann04-nwAR_R2_trimmed_fastq.gz ann04-nwAR_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann05-ccNM_R1.fastq.gz ann05-ccNM_R2.fastq.gz ann05-ccNM_R1_trimmed_fastq.gz ann05-ccNM_R1_unpaired.fastq.gz ann05-ccNM_R2_trimmed_fastq.gz ann05-ccNM_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann06-seWY_R1.fastq.gz ann06-seWY_R2.fastq.gz ann06-seWY_R1_trimmed_fastq.gz ann06-seWY_R1_unpaired.fastq.gz ann06-seWY_R2_trimmed_fastq.gz ann06-seWY_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann08-ceTN_R1.fastq.gz ann08-ceTN_R2.fastq.gz ann08-ceTN_R1_trimmed_fastq.gz ann08-ceTN_R1_unpaired.fastq.gz ann08-ceTN_R2_trimmed_fastq.gz ann08-ceTN_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann10-ccIL_R1.fastq.gz ann10-ccIL_R2.fastq.gz ann10-ccIL_R1_trimmed_fastq.gz ann10-ccIL_R1_unpaired.fastq.gz ann10-ccIL_R2_trimmed_fastq.gz ann10-ccIL_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann20-seAZ_R1.fastq.gz ann20-seAZ_R2.fastq.gz ann20-seAZ_R1_trimmed_fastq.gz ann20-seAZ_R1_unpaired.fastq.gz ann20-seAZ_R2_trimmed_fastq.gz ann20-seAZ_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann28-swSK_R1.fastq.gz ann28-swSK_R2.fastq.gz ann28-swSK_R1_trimmed_fastq.gz ann28-swSK_R1_unpaired.fastq.gz ann28-swSK_R2_trimmed_fastq.gz ann28-swSK_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann29-neSD_R1.fastq.gz ann29-neSD_R2.fastq.gz ann29-neSD_R1_trimmed_fastq.gz ann29-neSD_R1_unpaired.fastq.gz ann29-neSD_R2_trimmed_fastq.gz ann29-neSD_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann34-cwKS_R1.fastq.gz ann34-cwKS_R2.fastq.gz ann34-cwKS_R1_trimmed_fastq.gz ann34-cwKS_R1_unpaired.fastq.gz ann34-cwKS_R2_trimmed_fastq.gz ann34-cwKS_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann39-ncNE_R1.fastq.gz ann39-ncNE_R2.fastq.gz ann39-ncNE_R1_trimmed_fastq.gz ann39-ncNE_R1_unpaired.fastq.gz ann39-ncNE_R2_trimmed_fastq.gz ann39-ncNE_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ann44-ccCA_R1.fastq.gz ann44-ccCA_R2.fastq.gz ann44-ccCA_R1_trimmed_fastq.gz ann44-ccCA_R1_unpaired.fastq.gz ann44-ccCA_R2_trimmed_fastq.gz ann44-ccCA_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE annIA_R1.fastq.gz annIA_R2.fastq.gz annIA_R1_trimmed_fastq.gz annIA_R1_unpaired.fastq.gz annIA_R2_trimmed_fastq.gz annIA_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE annKS_R1.fastq.gz annKS_R2.fastq.gz annKS_R1_trimmed_fastq.gz annKS_R1_unpaired.fastq.gz annKS_R2_trimmed_fastq.gz annKS_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE annNM_R1.fastq.gz annNM_R2.fastq.gz annNM_R1_trimmed_fastq.gz annNM_R1_unpaired.fastq.gz annNM_R2_trimmed_fastq.gz annNM_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE annWY_R1.fastq.gz annWY_R2.fastq.gz annWY_R1_trimmed_fastq.gz annWY_R1_unpaired.fastq.gz annWY_R2_trimmed_fastq.gz annWY_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE IA1W-1_R1.fastq.gz IA1W-1_R2.fastq.gz IA1W-1_R1_trimmed_fastq.gz IA1W-1_R1_unpaired.fastq.gz IA1W-1_R2_trimmed_fastq.gz IA1W-1_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE IA2W-17_R1.fastq.gz IA2W-17_R2.fastq.gz IA2W-17_R1_trimmed_fastq.gz IA2W-17_R1_unpaired.fastq.gz IA2W-17_R2_trimmed_fastq.gz IA2W-17_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE KS1W-27_R1.fastq.gz KS1W-27_R2.fastq.gz KS1W-27_R1_trimmed_fastq.gz KS1W-27_R1_unpaired.fastq.gz KS1W-27_R2_trimmed_fastq.gz KS1W-27_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE KS2W-35_R1.fastq.gz KS2W-35_R2.fastq.gz KS2W-35_R1_trimmed_fastq.gz KS2W-35_R1_unpaired.fastq.gz KS2W-35_R2_trimmed_fastq.gz KS2W-35_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE MB1W-40_R1.fastq.gz MB1W-40_R2.fastq.gz MB1W-40_R1_trimmed_fastq.gz MB1W-40_R1_unpaired.fastq.gz MB1W-40_R2_trimmed_fastq.gz MB1W-40_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE MO1W-39_R1.fastq.gz MO1W-39_R2.fastq.gz MO1W-39_R1_trimmed_fastq.gz MO1W-39_R1_unpaired.fastq.gz MO1W-39_R2_trimmed_fastq.gz MO1W-39_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE ND1W-6_R1.fastq.gz ND1W-6_R2.fastq.gz ND1W-6_R1_trimmed_fastq.gz ND1W-6_R1_unpaired.fastq.gz ND1W-6_R2_trimmed_fastq.gz ND1W-6_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE SD1W-35_R1.fastq.gz SD1W-35_R2.fastq.gz SD1W-35_R1_trimmed_fastq.gz SD1W-35_R1_unpaired.fastq.gz SD1W-35_R2_trimmed_fastq.gz SD1W-35_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE SD2W-18_R1.fastq.gz SD2W-18_R2.fastq.gz SD2W-18_R1_trimmed_fastq.gz SD2W-18_R1_unpaired.fastq.gz SD2W-18_R2_trimmed_fastq.gz SD2W-18_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE SK1W-Q_R1.fastq.gz SK1W-Q_R2.fastq.gz SK1W-Q_R1_trimmed_fastq.gz SK1W-Q_R1_unpaired.fastq.gz SK1W-Q_R2_trimmed_fastq.gz SK1W-Q_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Anzac_Pueblo_R1.fastq.gz Anzac_Pueblo_R2.fastq.gz Anzac_Pueblo_R1_trimmed_fastq.gz Anzac_Pueblo_R1_unpaired.fastq.gz Anzac_Pueblo_R2_trimmed_fastq.gz Anzac_Pueblo_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Arikara_R1.fastq.gz Arikara_R2.fastq.gz Arikara_R1_trimmed_fastq.gz Arikara_R1_unpaired.fastq.gz Arikara_R2_trimmed_fastq.gz Arikara_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Havasupai_R1.fastq.gz Havasupai_R2.fastq.gz Havasupai_R1_trimmed_fastq.gz Havasupai_R1_unpaired.fastq.gz Havasupai_R2_trimmed_fastq.gz Havasupai_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Hidatsa1_R1.fastq.gz Hidatsa1_R2.fastq.gz Hidatsa1_R1_trimmed_fastq.gz Hidatsa1_R1_unpaired.fastq.gz Hidatsa1_R2_trimmed_fastq.gz Hidatsa1_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Hopi_R1.fastq.gz Hopi_R2.fastq.gz Hopi_R1_trimmed_fastq.gz Hopi_R1_unpaired.fastq.gz Hopi_R2_trimmed_fastq.gz Hopi_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Laguna_Pueblo_R1.fastq.gz Laguna_Pueblo_R2.fastq.gz Laguna_Pueblo_R1_trimmed_fastq.gz Laguna_Pueblo_R1_unpaired.fastq.gz Laguna_Pueblo_R2_trimmed_fastq.gz Laguna_Pueblo_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Mandan2_R1.fastq.gz Mandan2_R2.fastq.gz Mandan2_R1_trimmed_fastq.gz Mandan2_R1_unpaired.fastq.gz Mandan2_R2_trimmed_fastq.gz Mandan2_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE MexCult14_R1.fastq.gz MexCult14_R2.fastq.gz MexCult14_R1_trimmed_fastq.gz MexCult14_R1_unpaired.fastq.gz MexCult14_R2_trimmed_fastq.gz MexCult14_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE MexCult15_R1.fastq.gz MexCult15_R2.fastq.gz MexCult15_R1_trimmed_fastq.gz MexCult15_R1_unpaired.fastq.gz MexCult15_R2_trimmed_fastq.gz MexCult15_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE MexCult1_R1.fastq.gz MexCult1_R2.fastq.gz MexCult1_R1_trimmed_fastq.gz MexCult1_R1_unpaired.fastq.gz MexCult1_R2_trimmed_fastq.gz MexCult1_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE MexCult3_R1.fastq.gz MexCult3_R2.fastq.gz MexCult3_R1_trimmed_fastq.gz MexCult3_R1_unpaired.fastq.gz MexCult3_R2_trimmed_fastq.gz MexCult3_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE MexCult6_R1.fastq.gz MexCult6_R2.fastq.gz MexCult6_R1_trimmed_fastq.gz MexCult6_R1_unpaired.fastq.gz MexCult6_R2_trimmed_fastq.gz MexCult6_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE MexCult7_R1.fastq.gz MexCult7_R2.fastq.gz MexCult7_R1_trimmed_fastq.gz MexCult7_R1_unpaired.fastq.gz MexCult7_R2_trimmed_fastq.gz MexCult7_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE MexCult9_R1.fastq.gz MexCult9_R2.fastq.gz MexCult9_R1_trimmed_fastq.gz MexCult9_R1_unpaired.fastq.gz MexCult9_R2_trimmed_fastq.gz MexCult9_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE PPN046_R1.fastq.gz PPN046_R2.fastq.gz PPN046_R1_trimmed_fastq.gz PPN046_R1_unpaired.fastq.gz PPN046_R2_trimmed_fastq.gz PPN046_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE PPN083_R1.fastq.gz PPN083_R2.fastq.gz PPN083_R1_trimmed_fastq.gz PPN083_R1_unpaired.fastq.gz PPN083_R2_trimmed_fastq.gz PPN083_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Hopi_PPN285_R1.fastq.gz Hopi_PPN285_R2.fastq.gz Hopi_PPN285_R1_trimmed_fastq.gz Hopi_PPN285_R1_unpaired.fastq.gz Hopi_PPN285_R2_trimmed_fastq.gz Hopi_PPN285_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Pueblo_R1.fastq.gz Pueblo_R2.fastq.gz Pueblo_R1_trimmed_fastq.gz Pueblo_R1_unpaired.fastq.gz Pueblo_R2_trimmed_fastq.gz Pueblo_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Seneca_R1.fastq.gz Seneca_R2.fastq.gz Seneca_R1_trimmed_fastq.gz Seneca_R1_unpaired.fastq.gz Seneca_R2_trimmed_fastq.gz Seneca_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE Zuni_R1.fastq.gz Zuni_R2.fastq.gz Zuni_R1_trimmed_fastq.gz Zuni_R1_unpaired.fastq.gz Zuni_R2_trimmed_fastq.gz Zuni_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE RHA857_R1.fastq.gz RHA857_R2.fastq.gz RHA857_R1_trimmed_fastq.gz RHA857_R1_unpaired.fastq.gz RHA857_R2_trimmed_fastq.gz RHA857_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HA404_R1.fastq.gz HA404_R2.fastq.gz HA404_R1_trimmed_fastq.gz HA404_R1_unpaired.fastq.gz HA404_R2_trimmed_fastq.gz HA404_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE VIR847_R1.fastq.gz VIR847_R2.fastq.gz VIR847_R1_trimmed_fastq.gz VIR847_R1_unpaired.fastq.gz VIR847_R2_trimmed_fastq.gz VIR847_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HA433_R1.fastq.gz HA433_R2.fastq.gz HA433_R1_trimmed_fastq.gz HA433_R1_unpaired.fastq.gz HA433_R2_trimmed_fastq.gz HA433_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE RHA426_R1.fastq.gz RHA426_R2.fastq.gz RHA426_R1_trimmed_fastq.gz RHA426_R1_unpaired.fastq.gz RHA426_R2_trimmed_fastq.gz RHA426_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE RHA328_R1.fastq.gz RHA328_R2.fastq.gz RHA328_R1_trimmed_fastq.gz RHA328_R1_unpaired.fastq.gz RHA328_R2_trimmed_fastq.gz RHA328_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE RHA271_R1.fastq.gz RHA271_R2.fastq.gz RHA271_R1_trimmed_fastq.gz RHA271_R1_unpaired.fastq.gz RHA271_R2_trimmed_fastq.gz RHA271_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HA89_R1.fastq.gz HA89_R2.fastq.gz HA89_R1_trimmed_fastq.gz HA89_R1_unpaired.fastq.gz HA89_R2_trimmed_fastq.gz HA89_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE RHA408_R1.fastq.gz RHA408_R2.fastq.gz RHA408_R1_trimmed_fastq.gz RHA408_R1_unpaired.fastq.gz RHA408_R2_trimmed_fastq.gz RHA408_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HA316_R1.fastq.gz HA316_R2.fastq.gz HA316_R1_trimmed_fastq.gz HA316_R1_unpaired.fastq.gz HA316_R2_trimmed_fastq.gz HA316_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HA124_R1.fastq.gz HA124_R2.fastq.gz HA124_R1_trimmed_fastq.gz HA124_R1_unpaired.fastq.gz HA124_R2_trimmed_fastq.gz HA124_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE RHA309_R1.fastq.gz RHA309_R2.fastq.gz RHA309_R1_trimmed_fastq.gz RHA309_R1_unpaired.fastq.gz RHA309_R2_trimmed_fastq.gz RHA309_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HA442_R1.fastq.gz HA442_R2.fastq.gz HA442_R1_trimmed_fastq.gz HA442_R1_unpaired.fastq.gz HA442_R2_trimmed_fastq.gz HA442_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE RHA355_R1.fastq.gz RHA355_R2.fastq.gz RHA355_R1_trimmed_fastq.gz RHA355_R1_unpaired.fastq.gz RHA355_R2_trimmed_fastq.gz RHA355_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE PPN255_Manchurian_R1.fastq.gz PPN255_Manchurian_R2.fastq.gz PPN255_Manchurian_R1_trimmed_fastq.gz PPN255_Manchurian_R1_unpaired.fastq.gz PPN255_Manchurian_R2_trimmed_fastq.gz PPN255_Manchurian_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE HA821_R1.fastq.gz HA821_R2.fastq.gz HA821_R1_trimmed_fastq.gz HA821_R1_unpaired.fastq.gz HA821_R2_trimmed_fastq.gz HA821_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE RHA311_R1.fastq.gz RHA311_R2.fastq.gz RHA311_R1_trimmed_fastq.gz RHA311_R1_unpaired.fastq.gz RHA311_R2_trimmed_fastq.gz RHA311_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE RHA358_R1.fastq.gz RHA358_R2.fastq.gz RHA358_R1_trimmed_fastq.gz RHA358_R1_unpaired.fastq.gz RHA358_R2_trimmed_fastq.gz RHA358_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE PPN262_R1.fastq.gz PPN262_R2.fastq.gz PPN262_R1_trimmed_fastq.gz PPN262_R1_unpaired.fastq.gz PPN262_R2_trimmed_fastq.gz PPN262_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
# java -jar /clusterfs/rosalind/users/makman/Trimmomatic-0.36/trimmomatic-0.36.jar PE SF33_R1.fastq.gz SF33_R2.fastq.gz SF33_R1_trimmed_fastq.gz SF33_R1_unpaired.fastq.gz SF33_R2_trimmed_fastq.gz SF33_R2_unpaired.fastq.gz ILLUMINACLIP:adaptersRay.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
