#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/trimmed/
#SBATCH -J fixfastq2
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --mem=54000
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/fix_fastq2.out
#SBATCH -e /global/home/users/makman/GATK/outs/fix_fastq2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# python remove_pair_info.py HA124_R1_trimmed.fastq.gz HA124_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA124_R2_trimmed.fastq.gz HA124_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA316_R1_trimmed.fastq.gz HA316_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA316_R2_trimmed.fastq.gz HA316_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA404_R1_trimmed.fastq.gz HA404_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA404_R2_trimmed.fastq.gz HA404_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA433_R1_trimmed.fastq.gz HA433_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA433_R2_trimmed.fastq.gz HA433_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA442_R1_trimmed.fastq.gz HA442_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA442_R2_trimmed.fastq.gz HA442_R2_trimmed_fixed.fastq.gz
python remove_pair_info.py HA821_R1_trimmed.fastq.gz HA821_R1_trimmed_fixed.fastq.gz
python remove_pair_info.py HA821_R2_trimmed.fastq.gz HA821_R2_trimmed_fixed.fastq.gz
python remove_pair_info.py RHA271_R1_trimmed.fastq.gz RHA271_R1_trimmed_fixed.fastq.gz
python remove_pair_info.py RHA271_R2_trimmed.fastq.gz RHA271_R2_trimmed_fixed.fastq.gz
python remove_pair_info.py RHA309_R1_trimmed.fastq.gz RHA309_R1_trimmed_fixed.fastq.gz
python remove_pair_info.py RHA309_R2_trimmed.fastq.gz RHA309_R2_trimmed_fixed.fastq.gz
python remove_pair_info.py RHA311_R1_trimmed.fastq.gz RHA311_R1_trimmed_fixed.fastq.gz
python remove_pair_info.py RHA311_R2_trimmed.fastq.gz RHA311_R2_trimmed_fixed.fastq.gz
python remove_pair_info.py RHA328_R1_trimmed.fastq.gz RHA328_R1_trimmed_fixed.fastq.gz
python remove_pair_info.py RHA328_R2_trimmed.fastq.gz RHA328_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py RHA355_R1_trimmed.fastq.gz RHA355_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py RHA355_R2_trimmed.fastq.gz RHA355_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py RHA358_R1_trimmed.fastq.gz RHA358_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py RHA358_R2_trimmed.fastq.gz RHA358_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py RHA408_R1_trimmed.fastq.gz RHA408_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py RHA408_R2_trimmed.fastq.gz RHA408_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py RHA857_R1_trimmed.fastq.gz RHA857_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py RHA857_R2_trimmed.fastq.gz RHA857_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py VIR847_R1_trimmed.fastq.gz VIR847_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py VIR847_R2_trimmed.fastq.gz VIR847_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA89_R1_trimmed.fastq.gz HA89_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py HA89_R2_trimmed.fastq.gz HA89_R2_trimmed_fixed.fastq.gz
# python remove_pair_info.py PPN255_Manchurian_R1_trimmed_fastq.gz PPN255_Manchurian_R1_trimmed_fixed_fastq.gz
# python remove_pair_info.py PPN255_Manchurian_R2_trimmed_fastq.gz PPN255_Manchurian_R2_trimmed_fixed_fastq.gz
# python remove_pair_info.py RHA426_R1_trimmed.fastq.gz RHA426_R1_trimmed_fixed.fastq.gz
# python remove_pair_info.py RHA426_R2_trimmed.fastq.gz RHA426_R2_trimmed_fixed.fastq.gz

