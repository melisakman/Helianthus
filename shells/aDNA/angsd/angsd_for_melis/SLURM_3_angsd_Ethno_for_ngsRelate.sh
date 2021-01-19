#!/bin/bash
#
#SBATCH --job-name=Angsd_ngsRelate_downsampled_ethnographic
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/3_angsd_ngsRelate_Ethno.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/3_angsd_ngsRelate_Ethno.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All


module load angsd/0.919-50-gc558037

bam_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/2_bam_data/nuclear/"
bam_file="Bam_list_Ethno_for_ngsRelate.txt"
output_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/3_angsd/"

output_extension="Ethno_ngsRelate_angsd"
sites_file_for_MajorMinor="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/3_angsd/Sites_from_Wilds.sites"

# Sites file already prepared
# zcat /global/scratch/nwales/Sunflower_paleomix/Alred_paper/3_angsd/Wilds_angsd_Sariel.mafs.gz | cut -f1-4 | sed 1d > ${sites_file_for_MajorMinor}
# angsd sites index ${sites_file_for_MajorMinor}

### Parameter choices:
# Doing the 0.19X downsampled ethnographic and all modern samples
# Only testing sites that were variable in wilds and had good coverage for allele frequency estimates. Wild AF will be used in ngsRelate (not this run)
# Transitions removed
# GLF of 2 is for a beagle file. Used for ngsAdmix, PCAngsd, ngsLD (either)
# GLF of 3 is for binary file. Used for ngsRelate, ngsLD (either)
# Haplo is for RAxML (maybe IBS is better?)
# doGeno 32 is for another genotyping file (not used?)
# Plink is useful for LD corrections, and it based on geno calls

angsd -bam  ${bam_directory}/${bam_file} -out ${output_directory}/${output_extension} \
-GL 1 -doGlf 3 \
-doMaf 1 \
-doMajorMinor 3 -sites ${sites_file_for_MajorMinor} \
-nThreads ${SLURM_CPUS_PER_TASK} \
-minMapQ 30 -minQ 20 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -rmTrans 1 \
-doIBS 1 -doCov 1 \
-doHaploCall 2 \
-doPlink 2 -doGeno 32 -geno_minDepth -1 -postCutoff 0.95 -doPost 1