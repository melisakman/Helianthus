#!/bin/bash 
#SBATCH -D /global/scratch/makman/aDNA/
#SBATCH -J paleo1
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/paleomix_run_aDNA.out
#SBATCH -e /global/home/users/makman/paloemix_outs/paleomix_run_aDNA.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load paleomix/1.2.12
module load mapDamage/2.08
module load samtools/1.6
module load bwa/0.7.17-r1188
# module unload r/3.2.5
# module load r/3.4.2
module unload gsl
module load gsl/2.3-gcc

module load hdf5
module load netcdf
module load udunits
module load openmpi


export PATH=/global/home/users/makman/install/jar_root/adapterremoval-2.3.1/build/:$PATH

paleomix bam_pipeline run /global/home/users/makman/git/Helianthus/shells/aDNA/20201026_firstpaleomix.yml --max-threads 24 --bwa-max-threads 6 --jre-option -Xmx16g --temp-root=/global/scratch/makman/temp/ --destination=/global/scratch/makman/Sunflower_paleomix/analyses




