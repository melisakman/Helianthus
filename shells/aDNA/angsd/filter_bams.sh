#!/bin/bash 
#SBATCH -D /global/scratch/makman/Sunflower_paleomix/analyses/
#SBATCH -J angsd1
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/angsd_filterbams.out
#SBATCH -e /global/home/users/makman/paloemix_outs/angsd_filterbams.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools

samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_A.XRQ_nuclear.realigned.bam Ethno_A.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_B.XRQ_nuclear.realigned.bam Ethno_B.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_C.XRQ_nuclear.realigned.bam Ethno_C.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_D.XRQ_nuclear.realigned.bam Ethno_D.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_E.XRQ_nuclear.realigned.bam Ethno_E.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_F.XRQ_nuclear.realigned.bam Ethno_F.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_G.XRQ_nuclear.realigned.bam Ethno_G.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_H.XRQ_nuclear.realigned.bam Ethno_H.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_I.XRQ_nuclear.realigned.bam Ethno_I.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_J.XRQ_nuclear.realigned.bam Ethno_J.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt Ethno_L.XRQ_nuclear.realigned.bam Ethno_L.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_02_Al.XRQ_nuclear.realigned.bam SF_02_Al.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_03_Pu.XRQ_nuclear.realigned.bam SF_03_Pu.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_05_Cr.XRQ_nuclear.realigned.bam SF_05_Cr.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_07_Ed.XRQ_nuclear.realigned.bam SF_07_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_10_Tr.XRQ_nuclear.realigned.bam SF_10_Tr.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_11_a_.XRQ_nuclear.realigned.bam SF_11_a_.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_12_Pu.XRQ_nuclear.realigned.bam SF_12_Pu.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_13_Al.XRQ_nuclear.realigned.bam SF_13_Al.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_15_Ag.XRQ_nuclear.realigned.bam SF_15_Ag.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_18_Ne.XRQ_nuclear.realigned.bam SF_18_Ne.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_19_Mo.XRQ_nuclear.realigned.bam SF_19_Mo.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_21_Ed.XRQ_nuclear.realigned.bam SF_21_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_22_Ed.XRQ_nuclear.realigned.bam SF_22_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_23_Ed.XRQ_nuclear.realigned.bam SF_23_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_25_NM.XRQ_nuclear.realigned.bam SF_25_NM.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_27_Be.XRQ_nuclear.realigned.bam SF_27_Be.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_28_Ed.XRQ_nuclear.realigned.bam SF_28_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_29_Br.XRQ_nuclear.realigned.bam SF_29_Br.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_33_Cl.XRQ_nuclear.realigned.bam SF_33_Cl.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_35b_C.XRQ_nuclear.realigned.bam SF_35b_C.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_37_Cl.XRQ_nuclear.realigned.bam SF_37_Cl.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_37b_C.XRQ_nuclear.realigned.bam SF_37b_C.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_38_Cl.XRQ_nuclear.realigned.bam SF_38_Cl.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_39_Ma.XRQ_nuclear.realigned.bam SF_39_Ma.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_41_Ed.XRQ_nuclear.realigned.bam SF_41_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_43_Ed.XRQ_nuclear.realigned.bam SF_43_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_45_Ed.XRQ_nuclear.realigned.bam SF_45_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_46_Ed.XRQ_nuclear.realigned.bam SF_46_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_48_Ed.XRQ_nuclear.realigned.bam SF_48_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_51_Ma.XRQ_nuclear.realigned.bam SF_51_Ma.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_52_Cl.XRQ_nuclear.realigned.bam SF_52_Cl.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_55_Cl.XRQ_nuclear.realigned.bam SF_55_Cl.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_57_Cl.XRQ_nuclear.realigned.bam SF_57_Cl.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_59_Ne.XRQ_nuclear.realigned.bam SF_59_Ne.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_63a_B.XRQ_nuclear.realigned.bam SF_63a_B.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_63b_B.XRQ_nuclear.realigned.bam SF_63b_B.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_64a_B.XRQ_nuclear.realigned.bam SF_64a_B.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65a_e.XRQ_nuclear.realigned.bam SF_65a_e.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65b_A.XRQ_nuclear.realigned.bam SF_65b_A.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65c_e.XRQ_nuclear.realigned.bam SF_65c_e.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65e_A.XRQ_nuclear.realigned.bam SF_65e_A.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65f_A.XRQ_nuclear.realigned.bam SF_65f_A.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65g_e.XRQ_nuclear.realigned.bam SF_65g_e.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65h_e.XRQ_nuclear.realigned.bam SF_65h_e.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65i_A.XRQ_nuclear.realigned.bam SF_65i_A.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65j_e.XRQ_nuclear.realigned.bam SF_65j_e.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65k_e.XRQ_nuclear.realigned.bam SF_65k_e.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65l_A.XRQ_nuclear.realigned.bam SF_65l_A.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_65m_A.XRQ_nuclear.realigned.bam SF_65m_A.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt SF_66a_I.XRQ_nuclear.realigned.bam SF_66a_I.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_01_Ne.XRQ_nuclear.realigned.bam additional_data/SF_01_Ne.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_04_Mo.XRQ_nuclear.realigned.bam additional_data/SF_04_Mo.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_06_Gr.XRQ_nuclear.realigned.bam additional_data/SF_06_Gr.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_14_Pu.XRQ_nuclear.realigned.bam additional_data/SF_14_Pu.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_17_Ne.XRQ_nuclear.realigned.bam additional_data/SF_17_Ne.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_20_Po.XRQ_nuclear.realigned.bam additional_data/SF_20_Po.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_30_Ed.XRQ_nuclear.realigned.bam additional_data/SF_30_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_31_Co.XRQ_nuclear.realigned.bam additional_data/SF_31_Co.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_32_Cl.XRQ_nuclear.realigned.bam additional_data/SF_32_Cl.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_35_Cl.XRQ_nuclear.realigned.bam additional_data/SF_35_Cl.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_40_Ma.XRQ_nuclear.realigned.bam additional_data/SF_40_Ma.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_42_Ed.XRQ_nuclear.realigned.bam additional_data/SF_42_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_49_Ed.XRQ_nuclear.realigned.bam additional_data/SF_49_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_50_Ed.XRQ_nuclear.realigned.bam additional_data/SF_50_Ed.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_58_Ne.XRQ_nuclear.realigned.bam additional_data/SF_58_Ne.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_64b_B.XRQ_nuclear.realigned.bam additional_data/SF_64b_B.XRQ_nuclear.realigned.filtered.bam
samtools view -b -L /global/home/users/makman/git/Helianthus/shells/aDNA/angsd/chr_file.txt additional_data/SF_65d_A.XRQ_nuclear.realigned.bam additional_data/SF_65d_A.XRQ_nuclear.realigned.filtered.bam
  