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
#SBATCH -o /global/home/users/makman/paloemix_outs/preseq_prep_aDNA2.out
#SBATCH -e /global/home/users/makman/paloemix_outs/preseq_prep_aDNA2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load preseq
module load samtools

# samtools view SF_19_Mo.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_19_Mo_domGenes.bam
# samtools view SF_22_Ed.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_22_Ed_domGenes.bam
# samtools view SF_21_Ed.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_21_Ed_domGenes.bam
# samtools view SF_41_Ed.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_41_Ed_domGenes.bam
# samtools view SF_43_Ed.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_43_Ed_domGenes.bam
# samtools view SF_49_Ed.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_49_Ed_domGenes.bam
# samtools view SF_63a_B.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_63a_B_domGenes.bam
# samtools view SF_25_NM.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_25_NM_domGenes.bam
# samtools view SF_31_Co.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_31_Co_domGenes.bam
# samtools view SF_46_Ed.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_46_Ed_domGenes.bam
# samtools view SF_12_Pu.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_12_Pu_domGenes.bam
# samtools view SF_29_Br.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_29_Br_domGenes.bam
# samtools view SF_20_Po.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_20_Po_domGenes.bam
# samtools view SF_42_Ed.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_42_Ed_domGenes.bam
# samtools view SF_64a_B.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_64a_B_domGenes.bam
# samtools view SF_06_Gr.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_06_Gr_domGenes.bam
# samtools view SF_64b_B.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_64b_B_domGenes.bam
# samtools view SF_30_Ed.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_30_Ed_domGenes.bam
# samtools view SF_65d_A.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65d_A_domGenes.bam
# samtools view SF_58_Ne.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_58_Ne_domGenes.bam
# samtools view SF_50_Ed.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_50_Ed_domGenes.bam
# samtools view SF_01_Ne.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_01_Ne_domGenes.bam
# samtools view SF_65k_e.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65k_e_domGenes.bam
# samtools view SF_65e_A.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65e_A_domGenes.bam
# samtools view SF_32_Cl.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_32_Cl_domGenes.bam
# samtools view SF_65g_e.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65g_e_domGenes.bam
# samtools view SF_35_Cl.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_35_Cl_domGenes.bam
# samtools view SF_04_Mo.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_04_Mo_domGenes.bam
# samtools view SF_65m_A.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65m_A_domGenes.bam
# samtools view SF_65i_A.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65i_A_domGenes.bam
# samtools view SF_11_a_.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_11_a__domGenes.bam
# samtools view SF_14_Pu.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_14_Pu_domGenes.bam
# samtools view SF_65j_e.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65j_e_domGenes.bam
# samtools view SF_40_Ma.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_40_Ma_domGenes.bam
# samtools view SF_35b_C.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_35b_C_domGenes.bam
# samtools view SF_65f_A.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65f_A_domGenes.bam
# samtools view SF_65a_e.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65a_e_domGenes.bam
# samtools view SF_17_Ne.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_17_Ne_domGenes.bam
# samtools view SF_48_Ed.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_48_Ed_domGenes.bam
# samtools view SF_65c_e.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65c_e_domGenes.bam
# samtools view SF_65b_A.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65b_A_domGenes.bam
# samtools view SF_51_Ma.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_51_Ma_domGenes.bam
# samtools view SF_65l_A.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65l_A_domGenes.bam
# samtools view SF_39_Ma.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_39_Ma_domGenes.bam
# samtools view SF_27_Be.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_27_Be_domGenes.bam
# samtools view SF_33_Cl.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_33_Cl_domGenes.bam
# samtools view SF_65h_e.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_65h_e_domGenes.bam
# samtools view SF_13_Al.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_13_Al_domGenes.bam
# samtools view SF_52_Cl.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_52_Cl_domGenes.bam
# samtools view SF_66a_I.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_66a_I_domGenes.bam
# samtools view SF_37_Cl.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_37_Cl_domGenes.bam
# samtools view SF_37b_C.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_37b_C_domGenes.bam
# samtools view SF_18_Ne.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_18_Ne_domGenes.bam
# samtools view SF_59_Ne.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_59_Ne_domGenes.bam
# samtools view SF_10_Tr.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_10_Tr_domGenes.bam
# samtools view SF_57_Cl.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_57_Cl_domGenes.bam
# samtools view SF_55_Cl.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_55_Cl_domGenes.bam
# samtools view SF_38_Cl.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_38_Cl_domGenes.bam
# samtools view SF_02_Al.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_02_Al_domGenes.bam
# samtools view SF_15_Ag.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o SF_15_Ag_domGenes.bam

samtools view Ethno_F.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o Ethno_F_domGenes.bam
samtools view Ethno_A.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o Ethno_A_domGenes.bam
samtools view Ethno_C.XRQ_nuclear.realigned.bam -L ../dom_genes.bed -b -o Ethno_C_domGenes.bam
