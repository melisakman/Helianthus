#!/bin/bash 
#SBATCH -D /global/scratch/makman/Sunflower_paleomix/analyses/
#SBATCH -J preseq1
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/preseq_aDNA1.out
#SBATCH -e /global/home/users/makman/paloemix_outs/preseq_aDNA1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load preseq
module load samtools

preseq c_curve -o SF_19_Mo.complexity.txt -v -s 20000 -B SF_19_Mo_domGenes.bam
preseq c_curve -o SF_22_Ed.complexity.txt -v -s 20000 -B SF_22_Ed_domGenes.bam
preseq c_curve -o SF_21_Ed.complexity.txt -v -s 20000 -B SF_21_Ed_domGenes.bam
preseq c_curve -o SF_41_Ed.complexity.txt -v -s 20000 -B SF_41_Ed_domGenes.bam
preseq c_curve -o SF_43_Ed.complexity.txt -v -s 20000 -B SF_43_Ed_domGenes.bam
preseq c_curve -o SF_49_Ed.complexity.txt -v -s 20000 -B SF_49_Ed_domGenes.bam
preseq c_curve -o SF_63a_B.complexity.txt -v -s 20000 -B SF_63a_B_domGenes.bam
preseq c_curve -o SF_25_NM.complexity.txt -v -s 20000 -B SF_25_NM_domGenes.bam
preseq c_curve -o SF_31_Co.complexity.txt -v -s 20000 -B SF_31_Co_domGenes.bam
preseq c_curve -o SF_46_Ed.complexity.txt -v -s 20000 -B SF_46_Ed_domGenes.bam
preseq c_curve -o SF_12_Pu.complexity.txt -v -s 20000 -B SF_12_Pu_domGenes.bam
preseq c_curve -o SF_29_Br.complexity.txt -v -s 20000 -B SF_29_Br_domGenes.bam
preseq c_curve -o SF_20_Po.complexity.txt -v -s 20000 -B SF_20_Po_domGenes.bam
preseq c_curve -o SF_42_Ed.complexity.txt -v -s 20000 -B SF_42_Ed_domGenes.bam
preseq c_curve -o SF_64a_B.complexity.txt -v -s 20000 -B SF_64a_B_domGenes.bam
preseq c_curve -o SF_06_Gr.complexity.txt -v -s 20000 -B SF_06_Gr_domGenes.bam
preseq c_curve -o SF_64b_B.complexity.txt -v -s 20000 -B SF_64b_B_domGenes.bam
preseq c_curve -o SF_30_Ed.complexity.txt -v -s 20000 -B SF_30_Ed_domGenes.bam
preseq c_curve -o SF_65d_A.complexity.txt -v -s 20000 -B SF_65d_A_domGenes.bam
preseq c_curve -o SF_58_Ne.complexity.txt -v -s 20000 -B SF_58_Ne_domGenes.bam
preseq c_curve -o SF_50_Ed.complexity.txt -v -s 20000 -B SF_50_Ed_domGenes.bam
preseq c_curve -o SF_01_Ne.complexity.txt -v -s 20000 -B SF_01_Ne_domGenes.bam
preseq c_curve -o SF_65k_e.complexity.txt -v -s 20000 -B SF_65k_e_domGenes.bam
preseq c_curve -o SF_65e_A.complexity.txt -v -s 20000 -B SF_65e_A_domGenes.bam
preseq c_curve -o SF_32_Cl.complexity.txt -v -s 20000 -B SF_32_Cl_domGenes.bam
preseq c_curve -o SF_65g_e.complexity.txt -v -s 20000 -B SF_65g_e_domGenes.bam
preseq c_curve -o SF_35_Cl.complexity.txt -v -s 20000 -B SF_35_Cl_domGenes.bam
preseq c_curve -o SF_04_Mo.complexity.txt -v -s 20000 -B SF_04_Mo_domGenes.bam
preseq c_curve -o SF_65m_A.complexity.txt -v -s 20000 -B SF_65m_A_domGenes.bam
preseq c_curve -o SF_65i_A.complexity.txt -v -s 20000 -B SF_65i_A_domGenes.bam
preseq c_curve -o SF_11_a_.complexity.txt -v -s 20000 -B SF_11_a__domGenes.bam
preseq c_curve -o SF_14_Pu.complexity.txt -v -s 20000 -B SF_14_Pu_domGenes.bam
preseq c_curve -o SF_65j_e.complexity.txt -v -s 20000 -B SF_65j_e_domGenes.bam
preseq c_curve -o SF_40_Ma.complexity.txt -v -s 20000 -B SF_40_Ma_domGenes.bam
preseq c_curve -o SF_35b_C.complexity.txt -v -s 20000 -B SF_35b_C_domGenes.bam
preseq c_curve -o SF_65f_A.complexity.txt -v -s 20000 -B SF_65f_A_domGenes.bam
preseq c_curve -o SF_65a_e.complexity.txt -v -s 20000 -B SF_65a_e_domGenes.bam
preseq c_curve -o SF_17_Ne.complexity.txt -v -s 20000 -B SF_17_Ne_domGenes.bam
preseq c_curve -o SF_48_Ed.complexity.txt -v -s 20000 -B SF_48_Ed_domGenes.bam
preseq c_curve -o SF_65c_e.complexity.txt -v -s 20000 -B SF_65c_e_domGenes.bam
preseq c_curve -o SF_65b_A.complexity.txt -v -s 20000 -B SF_65b_A_domGenes.bam
preseq c_curve -o SF_51_Ma.complexity.txt -v -s 20000 -B SF_51_Ma_domGenes.bam
preseq c_curve -o SF_65l_A.complexity.txt -v -s 20000 -B SF_65l_A_domGenes.bam
preseq c_curve -o SF_39_Ma.complexity.txt -v -s 20000 -B SF_39_Ma_domGenes.bam
preseq c_curve -o SF_27_Be.complexity.txt -v -s 20000 -B SF_27_Be_domGenes.bam
preseq c_curve -o SF_33_Cl.complexity.txt -v -s 20000 -B SF_33_Cl_domGenes.bam
preseq c_curve -o SF_65h_e.complexity.txt -v -s 20000 -B SF_65h_e_domGenes.bam
preseq c_curve -o SF_13_Al.complexity.txt -v -s 20000 -B SF_13_Al_domGenes.bam
preseq c_curve -o SF_52_Cl.complexity.txt -v -s 20000 -B SF_52_Cl_domGenes.bam
preseq c_curve -o SF_66a_I.complexity.txt -v -s 20000 -B SF_66a_I_domGenes.bam
preseq c_curve -o SF_37_Cl.complexity.txt -v -s 20000 -B SF_37_Cl_domGenes.bam
preseq c_curve -o SF_37b_C.complexity.txt -v -s 20000 -B SF_37b_C_domGenes.bam
preseq c_curve -o SF_18_Ne.complexity.txt -v -s 20000 -B SF_18_Ne_domGenes.bam
preseq c_curve -o SF_59_Ne.complexity.txt -v -s 20000 -B SF_59_Ne_domGenes.bam
preseq c_curve -o SF_10_Tr.complexity.txt -v -s 20000 -B SF_10_Tr_domGenes.bam
preseq c_curve -o SF_57_Cl.complexity.txt -v -s 20000 -B SF_57_Cl_domGenes.bam
preseq c_curve -o SF_55_Cl.complexity.txt -v -s 20000 -B SF_55_Cl_domGenes.bam
preseq c_curve -o SF_38_Cl.complexity.txt -v -s 20000 -B SF_38_Cl_domGenes.bam
preseq c_curve -o SF_02_Al.complexity.txt -v -s 20000 -B SF_02_Al_domGenes.bam
preseq c_curve -o SF_15_Ag.complexity.txt -v -s 20000 -B SF_15_Ag_domGenes.bam



preseq lc_extrap -o SF_19_Mo.extrap.txt -v -s 20000 -B SF_19_Mo_domGenes.bam
preseq lc_extrap -o SF_22_Ed.extrap.txt -v -s 20000 -B SF_22_Ed_domGenes.bam
preseq lc_extrap -o SF_21_Ed.extrap.txt -v -s 20000 -B SF_21_Ed_domGenes.bam
preseq lc_extrap -o SF_41_Ed.extrap.txt -v -s 20000 -B SF_41_Ed_domGenes.bam
preseq lc_extrap -o SF_43_Ed.extrap.txt -v -s 20000 -B SF_43_Ed_domGenes.bam
preseq lc_extrap -o SF_49_Ed.extrap.txt -v -s 20000 -B SF_49_Ed_domGenes.bam
preseq lc_extrap -o SF_63a_B.extrap.txt -v -s 20000 -B SF_63a_B_domGenes.bam
preseq lc_extrap -o SF_25_NM.extrap.txt -v -s 20000 -B SF_25_NM_domGenes.bam
preseq lc_extrap -o SF_31_Co.extrap.txt -v -s 20000 -B SF_31_Co_domGenes.bam
preseq lc_extrap -o SF_46_Ed.extrap.txt -v -s 20000 -B SF_46_Ed_domGenes.bam
preseq lc_extrap -o SF_12_Pu.extrap.txt -v -s 20000 -B SF_12_Pu_domGenes.bam
preseq lc_extrap -o SF_29_Br.extrap.txt -v -s 20000 -B SF_29_Br_domGenes.bam
preseq lc_extrap -o SF_20_Po.extrap.txt -v -s 20000 -B SF_20_Po_domGenes.bam
preseq lc_extrap -o SF_42_Ed.extrap.txt -v -s 20000 -B SF_42_Ed_domGenes.bam
preseq lc_extrap -o SF_64a_B.extrap.txt -v -s 20000 -B SF_64a_B_domGenes.bam
preseq lc_extrap -o SF_06_Gr.extrap.txt -v -s 20000 -B SF_06_Gr_domGenes.bam
preseq lc_extrap -o SF_64b_B.extrap.txt -v -s 20000 -B SF_64b_B_domGenes.bam
preseq lc_extrap -o SF_30_Ed.extrap.txt -v -s 20000 -B SF_30_Ed_domGenes.bam
preseq lc_extrap -o SF_65d_A.extrap.txt -v -s 20000 -B SF_65d_A_domGenes.bam
preseq lc_extrap -o SF_58_Ne.extrap.txt -v -s 20000 -B SF_58_Ne_domGenes.bam
preseq lc_extrap -o SF_50_Ed.extrap.txt -v -s 20000 -B SF_50_Ed_domGenes.bam
preseq lc_extrap -o SF_01_Ne.extrap.txt -v -s 20000 -B SF_01_Ne_domGenes.bam
preseq lc_extrap -o SF_65k_e.extrap.txt -v -s 20000 -B SF_65k_e_domGenes.bam
preseq lc_extrap -o SF_65e_A.extrap.txt -v -s 20000 -B SF_65e_A_domGenes.bam
preseq lc_extrap -o SF_32_Cl.extrap.txt -v -s 20000 -B SF_32_Cl_domGenes.bam
preseq lc_extrap -o SF_65g_e.extrap.txt -v -s 20000 -B SF_65g_e_domGenes.bam
preseq lc_extrap -o SF_35_Cl.extrap.txt -v -s 20000 -B SF_35_Cl_domGenes.bam
preseq lc_extrap -o SF_04_Mo.extrap.txt -v -s 20000 -B SF_04_Mo_domGenes.bam
preseq lc_extrap -o SF_65m_A.extrap.txt -v -s 20000 -B SF_65m_A_domGenes.bam
preseq lc_extrap -o SF_65i_A.extrap.txt -v -s 20000 -B SF_65i_A_domGenes.bam
preseq lc_extrap -o SF_11_a_.extrap.txt -v -s 20000 -B SF_11_a__domGenes.bam
preseq lc_extrap -o SF_14_Pu.extrap.txt -v -s 20000 -B SF_14_Pu_domGenes.bam
preseq lc_extrap -o SF_65j_e.extrap.txt -v -s 20000 -B SF_65j_e_domGenes.bam
preseq lc_extrap -o SF_40_Ma.extrap.txt -v -s 20000 -B SF_40_Ma_domGenes.bam
preseq lc_extrap -o SF_35b_C.extrap.txt -v -s 20000 -B SF_35b_C_domGenes.bam
preseq lc_extrap -o SF_65f_A.extrap.txt -v -s 20000 -B SF_65f_A_domGenes.bam
preseq lc_extrap -o SF_65a_e.extrap.txt -v -s 20000 -B SF_65a_e_domGenes.bam
preseq lc_extrap -o SF_17_Ne.extrap.txt -v -s 20000 -B SF_17_Ne_domGenes.bam
preseq lc_extrap -o SF_48_Ed.extrap.txt -v -s 20000 -B SF_48_Ed_domGenes.bam
preseq lc_extrap -o SF_65c_e.extrap.txt -v -s 20000 -B SF_65c_e_domGenes.bam
preseq lc_extrap -o SF_65b_A.extrap.txt -v -s 20000 -B SF_65b_A_domGenes.bam
preseq lc_extrap -o SF_51_Ma.extrap.txt -v -s 20000 -B SF_51_Ma_domGenes.bam
preseq lc_extrap -o SF_65l_A.extrap.txt -v -s 20000 -B SF_65l_A_domGenes.bam
preseq lc_extrap -o SF_39_Ma.extrap.txt -v -s 20000 -B SF_39_Ma_domGenes.bam
preseq lc_extrap -o SF_27_Be.extrap.txt -v -s 20000 -B SF_27_Be_domGenes.bam
preseq lc_extrap -o SF_33_Cl.extrap.txt -v -s 20000 -B SF_33_Cl_domGenes.bam
preseq lc_extrap -o SF_65h_e.extrap.txt -v -s 20000 -B SF_65h_e_domGenes.bam
preseq lc_extrap -o SF_13_Al.extrap.txt -v -s 20000 -B SF_13_Al_domGenes.bam
preseq lc_extrap -o SF_52_Cl.extrap.txt -v -s 20000 -B SF_52_Cl_domGenes.bam
preseq lc_extrap -o SF_66a_I.extrap.txt -v -s 20000 -B SF_66a_I_domGenes.bam
preseq lc_extrap -o SF_37_Cl.extrap.txt -v -s 20000 -B SF_37_Cl_domGenes.bam
preseq lc_extrap -o SF_37b_C.extrap.txt -v -s 20000 -B SF_37b_C_domGenes.bam
preseq lc_extrap -o SF_18_Ne.extrap.txt -v -s 20000 -B SF_18_Ne_domGenes.bam
preseq lc_extrap -o SF_59_Ne.extrap.txt -v -s 20000 -B SF_59_Ne_domGenes.bam
preseq lc_extrap -o SF_10_Tr.extrap.txt -v -s 20000 -B SF_10_Tr_domGenes.bam
preseq lc_extrap -o SF_57_Cl.extrap.txt -v -s 20000 -B SF_57_Cl_domGenes.bam
preseq lc_extrap -o SF_55_Cl.extrap.txt -v -s 20000 -B SF_55_Cl_domGenes.bam
preseq lc_extrap -o SF_38_Cl.extrap.txt -v -s 20000 -B SF_38_Cl_domGenes.bam
preseq lc_extrap -o SF_02_Al.extrap.txt -v -s 20000 -B SF_02_Al_domGenes.bam
preseq lc_extrap -o SF_15_Ag.extrap.txt -v -s 20000 -B SF_15_Ag_domGenes.bam
# 
