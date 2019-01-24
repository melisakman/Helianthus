#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/sams/
#SBATCH -J map_10
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=480:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/map10.out
#SBATCH -e /global/home/users/makman/GATK/outs/map10.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Anzac_Pueblo_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Anzac_Pueblo_R1_trimmed.fastq.gz -o Anzac_Pueblo.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Arikara_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Arikara_R1_trimmed.fastq.gz -o Arikara.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/HA124_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA124_R1_trimmed.fastq.gz -o HA124.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/HA316_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA316_R1_trimmed.fastq.gz -o HA316.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/HA404_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA404_R1_trimmed.fastq.gz -o HA404.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/HA433_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA433_R1_trimmed.fastq.gz -o HA433.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/HA442_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA442_R1_trimmed.fastq.gz -o HA442.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/HA821_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA821_R1_trimmed.fastq.gz -o HA821.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/HA89_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/HA89_R1_trimmed.fastq.gz -o HA89.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Havasupai_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Havasupai_R1_trimmed.fastq.gz -o Havasupai.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Hidatsa1_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Hidatsa1_R1_trimmed.fastq.gz -o Hidatsa1.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Hopi_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Hopi_R1_trimmed.fastq.gz -o Hopi.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Hopi_dye_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Hopi_dye_R1_trimmed.fastq.gz -o Hopi_dye.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Hopi_mapping_parent_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Hopi_mapping_parent_R1_trimmed.fastq.gz -o Hopi_mapping_parent.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Hopi_other_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Hopi_other_R1_trimmed.fastq.gz -o Hopi_other.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Laguna_Pueblo_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Laguna_Pueblo_R1_trimmed.fastq.gz -o Laguna_Pueblo.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Mandan1_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Mandan1_R1_trimmed.fastq.gz -o Mandan1.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Mandan2_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Mandan2_R1_trimmed.fastq.gz -o Mandan2.sam
/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/MexCult14_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/MexCult14_R1_trimmed.fastq.gz -o MexCult14.sam
/clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/MexCult15_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/MexCult15_R1_trimmed.fastq.gz -o MexCult15.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/MexCult1_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/MexCult1_R1_trimmed.fastq.gz -o MexCult1.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/MexCult3_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/MexCult3_R1_trimmed.fastq.gz -o MexCult3.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/MexCult6_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/MexCult6_R1_trimmed.fastq.gz -o MexCult6.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/MexCult7_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/MexCult7_R1_trimmed.fastq.gz -o MexCult7.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/MexCult9_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/MexCult9_R1_trimmed.fastq.gz -o MexCult9.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/PPN255_Manchurian_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/PPN255_Manchurian_R1_trimmed.fastq.gz -o PPN255_Manchurian.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/PPN262_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/PPN262_R1_trimmed.fastq.gz -o PPN262.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Pueblo_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Pueblo_R1_trimmed.fastq.gz -o Pueblo.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/RHA271_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA271_R1_trimmed.fastq.gz -o RHA271.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/RHA309_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA309_R1_trimmed.fastq.gz -o RHA309.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/RHA311_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA311_R1_trimmed.fastq.gz -o RHA311.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/RHA328_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA328_R1_trimmed.fastq.gz -o RHA328.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/RHA355_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA355_R1_trimmed.fastq.gz -o RHA355.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/RHA358_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA358_R1_trimmed.fastq.gz -o RHA358.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/RHA408_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA408_R1_trimmed.fastq.gz -o RHA408.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/RHA426_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA426_R1_trimmed.fastq.gz -o RHA426.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/RHA857_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/RHA857_R1_trimmed.fastq.gz -o RHA857.fastq.gz
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/SF33_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/SF33_R1_trimmed.fastq.gz -o SF33.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Seneca_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Seneca_R1_trimmed.fastq.gz -o Seneca.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/VIR847_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/VIR847_R1_trimmed.fastq.gz -o VIR847.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/Zuni_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/Zuni_R1_trimmed.fastq.gz -o Zuni.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann06-seWY_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/ann06-seWY_R1_trimmed.fastq.gz -o ann06-seWY.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann08-ceTN_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/ann08-ceTN_R1_trimmed.fastq.gz -o ann08-ceTN.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann1238_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/ann1238_R1_trimmed.fastq.gz -o ann1238.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann34-cwKS_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/ann34-cwKS_R1_trimmed.fastq.gz -o ann34-cwKS.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/ann39-ncNE_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/ann39-ncNE_R1_trimmed.fastq.gz -o ann39-ncNE.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annIA_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annIA_R1_trimmed.fastq.gz -o annIA.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annKS2W-35_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annKS2W-35_R1_trimmed.fastq.gz -o annKS2W-35.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annKS_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annKS_R1_trimmed.fastq.gz -o annKS.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annMB1W-40_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annMB1W-40_R1_trimmed.fastq.gz -o annMB1W-40.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annMO1W-39_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annMO1W-39_R1_trimmed.fastq.gz -o annMO1W-39.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annMex_A1516_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annMex_A1516_R1_trimmed.fastq.gz -o annMex_A1516.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annMex_A1517_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annMex_A1517_R1_trimmed.fastq.gz -o annMex_A1517.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annMex_A1572_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annMex_A1572_R1_trimmed.fastq.gz -o annMex_A1572.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annMex_A1574_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annMex_A1574_R1_trimmed.fastq.gz -o annMex_A1574.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annMex_Ann261_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annMex_Ann261_R1_trimmed.fastq.gz -o annMex_Ann261.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annND1W-6_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annND1W-6_R1_trimmed.fastq.gz -o annND1W-6.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annNM_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annNM_R1_trimmed.fastq.gz -o annNM.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annSD1W-35_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annSD1W-35_R1_trimmed.fastq.gz -o annSD1W-35.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annSD2W-18_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annSD2W-18_R1_trimmed.fastq.gz -o annSD2W-18.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annSK1W-Q_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annSK1W-Q_R1_trimmed.fastq.gz -o annSK1W-Q.sam
# /clusterfs/rosalind/users/makman/NextGenMap-0.5.2/bin/ngm-0.5.2/ngm -r /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta -p -1 ../fastq/raw/ready/annWY_R1_trimmed.fastq.gz -2 ../fastq/raw/ready/annWY_R1_trimmed.fastq.gz -o annWY.sam
