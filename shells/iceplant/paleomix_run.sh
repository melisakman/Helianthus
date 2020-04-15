#!/bin/bash 
#SBATCH -D /global/scratch/makman/iceplant
#SBATCH -J paleo1
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/paloemix_outs/paleomix_run.out
#SBATCH -e /global/home/users/makman/paloemix_outs/paleomix_run.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load paleomix/1.2.12
module load mapDamage/2.08
module load samtools/1.6
module load bwa/0.7.17-r1188


paleomix bam_pipeline run /global/home/users/makman/git/Helianthus/shells/iceplant/iceplant.yml --max-threads 20 --jre-option -Xmx64g 
