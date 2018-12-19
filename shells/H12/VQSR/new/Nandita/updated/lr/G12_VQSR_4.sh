#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/G12/Nandita/updated/
#SBATCH -J G12-N4
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/G12_VQSR_Nandita_4.out
#SBATCH -e /global/home/users/makman/H12/outs/G12_VQSR_Nandita_4.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7

# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr01_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr01_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr02_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr02_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr03_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr03_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr04_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr04_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr05_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr05_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr06_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr06_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr07_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr07_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr08_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr08_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr09_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr09_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr10_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr10_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr11_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr11_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr12_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr12_G12_output_updated_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr13_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr13_G12_output_updated_lrOnly.txt 
python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr14_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr14_G12_output_updated_lrOnly.txt 
python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr15_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr15_G12_output_updated_lrOnly.txt 
python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr16_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr16_G12_output_updated_lrOnly.txt 
python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr17_G12_input_updated_lrOnly_junkRemoved.txt 46 -o chr17_G12_output_updated_lrOnly.txt 

