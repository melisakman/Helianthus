#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/ncbi_fqs/wild_LR_ethnoSamples
#SBATCH -J paleomix18
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=400:00:00
#SBATCH --mem=MaxMemPerNode
#SBATCH -o /global/scratch/peter_stokes/err_outs/paleomix18.out
#SBATCH -e /global/scratch/peter_stokes/err_outs/paleomix18.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All


module load mapDamage/2.08
module unload gsl
module load gsl/2.3-gcc
module load paleomix/1.2.12
module load r/3.4.2
module load samtools/1.6
module load bwa/0.7.17-r1188

export PATH=/global/home/users/peter_stokes/install/jar_root/adapterremoval-2.3.1/build:$PATH

paleomix bam_pipeline run /global/scratch/peter_stokes/ncbi_fqs/scripts/wild_yaml_18.yaml --max-threads $SLURM_CPUS_PER_TASK --jre-option -Xmx128g --bwa-max-threads 1 --destination=/global/scratch/peter_stokes/ncbi_fqs/unsorted_output --temp-root=/global/scratch/peter_stokes/ncbi_fqs