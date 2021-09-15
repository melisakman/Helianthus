#!/bin/bash 
#SBATCH -D /global/scratch/users/makman/aDNA/shotgun/
#SBATCH -J paleo19
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/paleomix_shotgun19.out
#SBATCH -e /global/home/users/makman/paloemix_outs/paleomix_shotgun19.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load paleomix/1.2.12
module load mapDamage/2.08
module load samtools/1.6
module load bwa/0.7.17-r1188


export PATH=/global/home/users/makman/install/jar_root/adapterremoval-2.3.1/build/:$PATH

paleomix bam_pipeline run /global/home/users/makman/git/Helianthus/shells/aDNA/shotgun/shotgun_paleomix19.yml --max-threads 24 --bwa-max-threads 24 --jre-option -Xmx64g --temp-root=/global/scratch/users/makman/temp/ --destination=/global/scratch/users/makman/Sunflower_paleomix_new/shotgun




