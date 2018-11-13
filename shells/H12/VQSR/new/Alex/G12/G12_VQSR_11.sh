#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/G12/
#SBATCH -J G12-11
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=600:00:00
#SBATCH -o /global/home/users/makman/H12/outs/G12_VQSR_11.out
#SBATCH -e /global/home/users/makman/H12/outs/G12_VQSR_11.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7

# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr01_G12_input.txt "every" chr01_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr02_G12_input.txt "every" chr02_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr03_G12_input.txt "every" chr03_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr04_G12_input.txt "every" chr04_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr05_G12_input.txt "every" chr05_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr06_G12_input.txt "every" chr06_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr07_G12_input.txt "every" chr07_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr08_G12_input.txt "every" chr08_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr09_G12_input.txt "every" chr09_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr10_G12_input.txt "every" chr10_G12_output.txt 20000 2000 5
python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr11_G12_input.txt "every" chr11_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr12_G12_input.txt "every" chr12_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr13_G12_input.txt "every" chr13_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr14_G12_input.txt "every" chr14_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr15_G12_input.txt "every" chr15_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr16_G12_input.txt "every" chr16_G12_output.txt 20000 2000 5
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py chr17_G12_input.txt "every" chr17_G12_output.txt 20000 2000 5

# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py ../chr01_G12_input_1M.txt "every" ../chr01_G12_1M_output_40K 40000 4000 5 
# python ~/git/Helianthus/shells/H12/VQSR/new/Alex/1000genomes_parsed_reader_FLEXv2_Melis_081518.py ../chr01_G12_input_1M.txt "every" ../chr01_G12_1M_output_5K 5000 500 5 
