#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/final/G12
#SBATCH -J G12
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=6:00:00
#SBATCH -o /global/home/users/makman/H12/outs/G12_varSNP_VQSR.out
#SBATCH -e /global/home/users/makman/H12/outs/G12_varSNP_VQSR.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


module load python/2.7

python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr01_G12_input.txt chr01_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr02_G12_input.txt chr02_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr03_G12_input.txt chr03_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr04_G12_input.txt chr04_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr05_G12_input.txt chr05_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr06_G12_input.txt chr06_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr07_G12_input.txt chr07_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr08_G12_input.txt chr08_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr09_G12_input.txt chr09_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr10_G12_input.txt chr10_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr11_G12_input.txt chr11_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr12_G12_input.txt chr12_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr13_G12_input.txt chr13_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr14_G12_input.txt chr14_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr15_G12_input.txt chr15_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr16_G12_input.txt chr16_G12_input_noInvariants.txt
python /global/home/users/makman/git/Helianthus/shells/H12/VQSR/new/Alex/remove_hetero_invariant.py chr17_G12_input.txt chr17_G12_input_noInvariants.txt
