#!/bin/bash 
#SBATCH -D /global/scratch/makman/aDNA/raw_data/
#SBATCH -J paleo5
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/paleomix_run_aDNA5c_TE.out
#SBATCH -e /global/home/users/makman/paloemix_outs/paleomix_run_aDNA5c_TE.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load paleomix/1.2.12
module load mapDamage/2.08
module load samtools/1.6
module load bwa/0.7.17-r1188


export PATH=/global/home/users/makman/install/jar_root/adapterremoval-2.3.1/build/:$PATH

paleomix bam_pipeline run /global/home/users/makman/git/Helianthus/shells/aDNA/paleomix/TEs/20201026_firstpaleomix5.yml --max-threads 24 --bwa-max-threads 6 --jre-option -Xmx16g --temp-root=/global/scratch/makman/temp/ --destination=/global/scratch/makman/Sunflower_paleomix/analyses/TEs


# the following line is for addition of the extra data.
paleomix bam_pipeline run /global/home/users/makman/git/Helianthus/shells/aDNA/paleomix/TEs/20201026_firstpaleomix5_1.yml --max-threads 24 --bwa-max-threads 6 --jre-option -Xmx16g --temp-root=/global/scratch/makman/temp/ --destination=/global/scratch/makman/Sunflower_paleomix/analyses/TEs



