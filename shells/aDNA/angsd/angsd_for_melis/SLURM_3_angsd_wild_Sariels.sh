#!/bin/bash
#
#SBATCH --job-name=Angsd_Wilds_htc
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/3_angsd_wild.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/3_angsd_wild.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All


module load angsd/0.919-50-gc558037

bam_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/2_bam_data/nuclear/"
bam_file="Bam_list_wild_Sariel.txt"
output_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/3_angsd/"
output_extension="Wilds_angsd_Sariel"


### Parameter choices:
# Just doing wild samples to infer the frequencies
# Only published samples used (24)
# minInd needs to be rather high in order to get a better allele freq estimate (Using 12 to have ???M SNPs)
# GLF of 2 is for a beagle file. Used for ngsAdmix, PCAngsd, ngsLD (either). Probably not used here. 
# GLF of 3 is for binary file. Used for ngsRelate, ngsLD (either)
# Transitions removed
# Mostly want positions and mafs.gz

angsd -bam  ${bam_directory}/${bam_file} -out ${output_directory}/${output_extension} -nThreads ${SLURM_CPUS_PER_TASK} \
-GL 1 -doGlf 3 \
-doMajorMinor 1 -SNP_pval 1e-6 \
-doMaf 1 -minMaf 0.05 \
-minMapQ 30 -minQ 20 -minInd 15 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -rmTrans 1 \
-doIBS 1 -doCov 1 \
-doHaploCall 2 \
-doPlink 2 -doGeno 32 -geno_minDepth -1 -postCutoff 0.95 -doPost 1