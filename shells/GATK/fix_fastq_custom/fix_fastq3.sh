#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/trimmed/
#SBATCH -J fixfastq3
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=54000
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fix_fastq3.out
#SBATCH -e /global/home/users/makman/GATK/outs/fix_fastq3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# gunzip HA124_R1_trimmed.fastq.gz 
# gunzip HA124_R2_trimmed.fastq.gz 
# gunzip HA316_R1_trimmed.fastq.gz 
# gunzip HA316_R2_trimmed.fastq.gz 
# gunzip HA404_R1_trimmed.fastq.gz 
# gunzip HA404_R2_trimmed.fastq.gz 
# gunzip HA433_R1_trimmed.fastq.gz 
# gunzip HA433_R2_trimmed.fastq.gz 
# gunzip HA442_R1_trimmed.fastq.gz 
# gunzip HA442_R2_trimmed.fastq.gz 
# gunzip HA821_R1_trimmed.fastq.gz 
# gunzip HA821_R2_trimmed.fastq.gz 
# gunzip RHA271_R1_trimmed.fastq.gz
# gunzip RHA271_R2_trimmed.fastq.gz
# gunzip RHA309_R1_trimmed.fastq.gz
# gunzip RHA309_R2_trimmed.fastq.gz
# gunzip RHA311_R1_trimmed.fastq.gz
# gunzip RHA311_R2_trimmed.fastq.gz
# gunzip RHA328_R1_trimmed.fastq.gz
# gunzip RHA328_R2_trimmed.fastq.gz
gunzip RHA355_R1_trimmed.fastq.gz
gunzip RHA355_R2_trimmed.fastq.gz
gunzip RHA358_R1_trimmed.fastq.gz
gunzip RHA358_R2_trimmed.fastq.gz
gunzip RHA408_R1_trimmed.fastq.gz
gunzip RHA408_R2_trimmed.fastq.gz
gunzip RHA857_R1_trimmed.fastq.gz
gunzip RHA857_R2_trimmed.fastq.gz
# gunzip VIR847_R1_trimmed.fastq.gz
# gunzip VIR847_R2_trimmed.fastq.gz
# gunzip HA89_R1_trimmed.fastq.gz 
# gunzip HA89_R2_trimmed.fastq.gz 
# gunzip PPN255_Manchurian_R1_trimmed_fastq.gz 
# gunzip PPN255_Manchurian_R2_trimmed_fastq.gz 

# python remove_pair_info.py HA124_R1_trimmed.fastq HA124_R1_trimmed_fixed.fastq
# python remove_pair_info.py HA124_R2_trimmed.fastq HA124_R2_trimmed_fixed.fastq
# python remove_pair_info.py HA316_R1_trimmed.fastq HA316_R1_trimmed_fixed.fastq
# python remove_pair_info.py HA316_R2_trimmed.fastq HA316_R2_trimmed_fixed.fastq
# python remove_pair_info.py HA404_R1_trimmed.fastq HA404_R1_trimmed_fixed.fastq
# python remove_pair_info.py HA404_R2_trimmed.fastq HA404_R2_trimmed_fixed.fastq
# python remove_pair_info.py HA433_R1_trimmed.fastq HA433_R1_trimmed_fixed.fastq
# python remove_pair_info.py HA433_R2_trimmed.fastq HA433_R2_trimmed_fixed.fastq
# python remove_pair_info.py HA442_R1_trimmed.fastq HA442_R1_trimmed_fixed.fastq
# python remove_pair_info.py HA442_R2_trimmed.fastq HA442_R2_trimmed_fixed.fastq
# python remove_pair_info.py HA821_R1_trimmed.fastq HA821_R1_trimmed_fixed.fastq
# python remove_pair_info.py HA821_R2_trimmed.fastq HA821_R2_trimmed_fixed.fastq
# python remove_pair_info.py RHA271_R1_trimmed.fastq RHA271_R1_trimmed_fixed.fastq
# python remove_pair_info.py RHA271_R2_trimmed.fastq RHA271_R2_trimmed_fixed.fastq
# python remove_pair_info.py RHA309_R1_trimmed.fastq RHA309_R1_trimmed_fixed.fastq
# python remove_pair_info.py RHA309_R2_trimmed.fastq RHA309_R2_trimmed_fixed.fastq
# python remove_pair_info.py RHA311_R1_trimmed.fastq RHA311_R1_trimmed_fixed.fastq
# python remove_pair_info.py RHA311_R2_trimmed.fastq RHA311_R2_trimmed_fixed.fastq
# python remove_pair_info.py RHA328_R1_trimmed.fastq RHA328_R1_trimmed_fixed.fastq
# python remove_pair_info.py RHA328_R2_trimmed.fastq RHA328_R2_trimmed_fixed.fastq
python remove_pair_info.py RHA355_R1_trimmed.fastq RHA355_R1_trimmed_fixed.fastq
python remove_pair_info.py RHA355_R2_trimmed.fastq RHA355_R2_trimmed_fixed.fastq
python remove_pair_info.py RHA358_R1_trimmed.fastq RHA358_R1_trimmed_fixed.fastq
python remove_pair_info.py RHA358_R2_trimmed.fastq RHA358_R2_trimmed_fixed.fastq
python remove_pair_info.py RHA408_R1_trimmed.fastq RHA408_R1_trimmed_fixed.fastq
python remove_pair_info.py RHA408_R2_trimmed.fastq RHA408_R2_trimmed_fixed.fastq
python remove_pair_info.py RHA857_R1_trimmed.fastq RHA857_R1_trimmed_fixed.fastq
python remove_pair_info.py RHA857_R2_trimmed.fastq RHA857_R2_trimmed_fixed.fastq
# python remove_pair_info.py VIR847_R1_trimmed.fastq VIR847_R1_trimmed_fixed.fastq
# python remove_pair_info.py VIR847_R2_trimmed.fastq VIR847_R2_trimmed_fixed.fastq
# python remove_pair_info.py HA89_R1_trimmed.fastq HA89_R1_trimmed_fixed.fastq
# python remove_pair_info.py HA89_R2_trimmed.fastq HA89_R2_trimmed_fixed.fastq
# python remove_pair_info.py PPN255_Manchurian_R1_trimmed_fastq PPN255_Manchurian_R1_trimmed_fixed_fastq
# python remove_pair_info.py PPN255_Manchurian_R2_trimmed_fastq PPN255_Manchurian_R2_trimmed_fixed_fastq
# python remove_pair_info.py RHA426_R1_trimmed.fastq RHA426_R1_trimmed_fixed.fastq
# python remove_pair_info.py RHA426_R2_trimmed.fastq RHA426_R2_trimmed_fixed.fastq

