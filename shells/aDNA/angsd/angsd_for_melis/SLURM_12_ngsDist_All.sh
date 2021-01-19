#!/bin/bash
#
#SBATCH --job-name=ngsDist_on_All
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/12_ngsDist/
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/12_ngsDist_all.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/12_ngsDist_all.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All


bam_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/2_bam_data/nuclear/"
bam_file="Bam_list_Alred_for_ngsRelate.txt"
angsd_directory="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/3_angsd/"
Project_name="Alred_all_sites"

module load  gcc/6.3.0
module load  zlib/1.2.11
module load  gsl/2.0

number_of_samples=`wc -l < ${bam_directory}/${bam_file}`
number_of_sites=`zcat ${angsd_directory}/${Project_name}.pos.gz | tail -n +2 | wc -l`
labelname=All_samples.txt
BOOTSTRAPS=100


/global/home/users/nwales/programs/ngsDist/ngsDist --pairwise_del --probs --geno ${angsd_directory}/${Project_name}.beagle.gz \
--n_ind ${number_of_samples} --n_sites ${number_of_sites} --out ${Project_name}_ngsDist.dist \
--n_threads ${SLURM_CPUS_PER_TASK} --labels ${labelname} --indep_geno --n_boot_rep $BOOTSTRAPS


# Use FastME to split the bootstrap replicates
/global/home/users/nwales/programs/FastME/src/fastme  -T 4 -i ${Project_name}_ngsDist.dist -s --datasets=101 -o ${Project_name}_all.nwk
head -n 1 ${Project_name}_all.nwk > ${Project_name}.main.nwk
tail -n +2 ${Project_name}_all.nwk | awk 'NF' > ${Project_name}.boot.nwk

# Use RAxML to add boot values to tree
module load raxml/8.2.11/
raxmlHPC -f b -t ${Project_name}.main.nwk -z ${Project_name}.boot.nwk -m GTRCAT -n Distance_${Project_name} -T 2

