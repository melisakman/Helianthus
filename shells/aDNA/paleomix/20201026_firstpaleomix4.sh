#!/bin/bash 
#SBATCH -D /global/scratch/users/makman/aDNA/raw_data/
#SBATCH -J paleo4
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/paleomix_run_aDNA4c.out
#SBATCH -e /global/home/users/makman/paloemix_outs/paleomix_run_aDNA4c.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load paleomix/1.2.12
module load mapDamage/2.08
module load samtools/1.6
module load bwa/0.7.17-r1188


export PATH=/global/home/users/makman/install/jar_root/adapterremoval-2.3.1/build/:$PATH

paleomix bam_pipeline run /global/home/users/makman/git/Helianthus/shells/aDNA/paleomix/20201026_firstpaleomix4.yml --max-threads 24 --bwa-max-threads 6 --jre-option -Xmx16g --temp-root=/global/scratch/users/makman/temp/ --destination=/global/scratch/users/makman/Sunflower_paleomix_new/

# the following line is for addition of the extra data.
paleomix bam_pipeline run /global/home/users/makman/git/Helianthus/shells/aDNA/paleomix/20201026_firstpaleomix4_1.yml --max-threads 24 --bwa-max-threads 6 --jre-option -Xmx16g --temp-root=/global/scratch/users/makman/temp/ --destination=/global/scratch/users/makman/Sunflower_paleomix_new/




