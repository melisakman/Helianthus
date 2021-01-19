#!/bin/bash
#
#SBATCH --job-name=Angsd_Alred_all_sites
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/
#SBATCH --time=72:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/3_angsd_ngsRelate_Alred.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/3_angsd_ngsRelate_Alred.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All


module load angsd/0.919-50-gc558037

bam_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/2_bam_data/nuclear/"
bam_file="Bam_list_Alred_for_ngsRelate.txt"
output_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/3_angsd/"

output_extension="Alred_all_sites"



### Parameter choices:
# Doing the individual Alred and all modern samples
# Transitions removed to avoid damage
# GLF of 2 is for a beagle file. Used for ngsAdmix, PCAngsd, ngsLD (either)
# GLF of 3 is for binary file. Used for ngsRelate, ngsLD (either)
# Haplo is for RAxML (maybe IBS is better?)
# doGeno 32 is for another genotyping file (not used?)
# Plink is useful for LD corrections, and it based on geno calls

angsd -bam  ${bam_directory}/${bam_file} -out ${output_directory}/${output_extension} -nThreads ${SLURM_CPUS_PER_TASK} \
-GL 1 -doGlf 2 \
-doMajorMinor 1 -SNP_pval 1e-6 \
-doMaf 1 -minMaf 0.05 \
-minMapQ 30 -minQ 20 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -rmTrans 1 \
-doIBS 1 -doCov 1 \
-doHaploCall 2 \
-doPlink 2 -doGeno 32 -geno_minDepth -1 -postCutoff 0.95 -doPost 1

