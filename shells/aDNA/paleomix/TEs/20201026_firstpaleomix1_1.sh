#!/bin/bash 
#SBATCH -D /global/scratch/makman/aDNA/raw_data/
#SBATCH -J paleo1_1
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --qos=savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/paleomix_run_aDNA1_1b_TE.out
#SBATCH -e /global/home/users/makman/paloemix_outs/paleomix_run_aDNA1_1b_TE.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load paleomix/1.2.12
module load mapDamage/2.08
module load samtools/1.6
module load bwa/0.7.17-r1188


export PATH=/global/home/users/makman/install/jar_root/adapterremoval-2.3.1/build/:$PATH

paleomix bam_pipeline run /global/home/users/makman/git/Helianthus/shells/aDNA/paleomix/TEs/20201026_firstpaleomix1_1.yml --max-threads 24 --bwa-max-threads 24 --jre-option -Xmx64g --temp-root=/global/scratch/makman/temp/ --destination=/global/scratch/makman/Sunflower_paleomix/analyses/TEs




scancel 8102790
scancel 8102793
scancel 8102794
scancel 8102797
scancel 8102800
scancel 8102803
scancel 8102780
scancel 8102783
scancel 8102786
scancel 8102789
scancel 8102869
scancel 8102863
scancel 8102866
scancel 8102872
scancel 8102873
scancel 8102876
scancel 8102879