#!/bin/bash
#
#SBATCH --job-name=ngsAdmix_Alred_Merged
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/6_ngsAdmix/
#SBATCH --time=30:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/6_ngsAdmix_Alred_Merged.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/6_ngsAdmix_Alred_Merged.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All

Project_name="Merged_Alred_angsd"
LD_corrected_beagle_file_path="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/5_ngsLD/Merged_Alred_angsd/"

mkdir ${Project_name}
cd ${Project_name}

zcat ${LD_corrected_beagle_file_path}/${Project_name}_covered.beagle.gz > ${Project_name}_covered.beagle

# For random seeds
module load r

# run NGSAdmix j times for each K
for j in {1..10}; do
	# run it K=i
	for k in {1..8}; do
		MYRAND=$(Rscript ~/programs/scripts/random_num.R)
		echo "Run #" $j "K:" $k "Random_seed" $MYRAND
		x=NGSAdmix_Run_$j/K_$k
		echo $x
		~/programs/NGSadmix -likes ${Project_name}_covered.beagle -K $k -P ${SLURM_CPUS_PER_TASK} -seed $MYRAND -o K"$k"_Run$j -minMaf 0.01 -printInfo 1
	done
done

# rm ${Project_name}_covered.beagle 
# rm *.filter *.fopt.gz

