#!/bin/bash 
#SBATCH -D /global/scratch/makman/iceplant/analyses2/
#SBATCH -J paleo1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/paleomix_run.out
#SBATCH -e /global/home/users/makman/paloemix_outs/paleomix_run.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load paleomix/1.2.12
module load mapDamage/2.08
module load samtools/1.6
module load bwa/0.7.17-r1188

export PATH=/global/home/users/makman/install/jar_root/adapterremoval-2.3.1/build/:$PATH

paleomix bam_pipeline run /global/home/users/makman/git/Helianthus/shells/iceplant/iceplant.yml --max-threads 12 --jre-option -Xmx128g --temp-root=/global/scratch/makman/temp2/ --destination=/global/scratch/makman/iceplant/analyses2/
