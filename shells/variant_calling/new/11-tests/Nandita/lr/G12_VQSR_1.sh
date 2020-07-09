#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/G12/Nandita/
#SBATCH -J G12-N1
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/H12/outs/G12_VQSR_Nandita_1.out
#SBATCH -e /global/home/users/makman/H12/outs/G12_VQSR_Nandita_1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7

python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr01_G12_input_lrOnly_junkRemoved.txt 24 -o chr01_G12_output_lrOnly.txt 
python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr02_G12_input_lrOnly_junkRemoved.txt 24 -o chr02_G12_output_lrOnly.txt 
python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr03_G12_input_lrOnly_junkRemoved.txt 24 -o chr03_G12_output_lrOnly.txt 
python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr04_G12_input_lrOnly_junkRemoved.txt 24 -o chr04_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr05_G12_input_lrOnly_junkRemoved.txt 24 -o chr05_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr06_G12_input_lrOnly_junkRemoved.txt 24 -o chr06_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr07_G12_input_lrOnly_junkRemoved.txt 24 -o chr07_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr08_G12_input_lrOnly_junkRemoved.txt 24 -o chr08_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr09_G12_input_lrOnly_junkRemoved.txt 24 -o chr09_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr10_G12_input_lrOnly_junkRemoved.txt 24 -o chr10_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr11_G12_input_lrOnly_junkRemoved.txt 24 -o chr11_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr12_G12_input_lrOnly_junkRemoved.txt 24 -o chr12_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr13_G12_input_lrOnly_junkRemoved.txt 24 -o chr13_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr14_G12_input_lrOnly_junkRemoved.txt 24 -o chr14_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr15_G12_input_lrOnly_junkRemoved.txt 24 -o chr15_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr16_G12_input_lrOnly_junkRemoved.txt 24 -o chr16_G12_output_lrOnly.txt 
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/H12_H2H1_updated.py chr17_G12_input_lrOnly_junkRemoved.txt 24 -o chr17_G12_output_lrOnly.txt 

