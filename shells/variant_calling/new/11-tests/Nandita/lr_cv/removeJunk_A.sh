#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/G12/Nandita/
#SBATCH -J G12-A
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --cpus-per-task=2
#SBATCH --time=16:00:00
#SBATCH -o /global/home/users/makman/H12/outs/removeJunk_xrqv2_A.out
#SBATCH -e /global/home/users/makman/H12/outs/removeJunk_xrqv2_A.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7



python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr01_G12_input_lrcv.txt chr01_G12_input_lrcv_junkRemoved.txt
python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr02_G12_input_lrcv.txt chr02_G12_input_lrcv_junkRemoved.txt
python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr03_G12_input_lrcv.txt chr03_G12_input_lrcv_junkRemoved.txt
python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr04_G12_input_lrcv.txt chr04_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr05_G12_input_lrcv.txt chr05_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr06_G12_input_lrcv.txt chr06_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr07_G12_input_lrcv.txt chr07_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr08_G12_input_lrcv.txt chr08_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr09_G12_input_lrcv.txt chr09_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr10_G12_input_lrcv.txt chr10_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr11_G12_input_lrcv.txt chr11_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr12_G12_input_lrcv.txt chr12_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr13_G12_input_lrcv.txt chr13_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr14_G12_input_lrcv.txt chr14_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr15_G12_input_lrcv.txt chr15_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr16_G12_input_lrcv.txt chr16_G12_input_lrcv_junkRemoved.txt
# python ~/git/Helianthus/shells/H12/VQSR/new/Nandita/updated/remove_junkdata.py chr17_G12_input_lrcv.txt chr17_G12_input_lrcv_junkRemoved.txt
