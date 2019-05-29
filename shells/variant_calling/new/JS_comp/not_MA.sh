#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/
#SBATCH -J G6
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/JS_MA_comp.out
#SBATCH -e /global/home/users/makman/GATK/outs/JS_MA_comp.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# gunzip gvcfs/genotyping/chr01_GATK.vcf.gz

# python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/JS_comp/not_MA.py /global/scratch/makman/GATK/bcftools_isec/chr01_1_JS_GATK/sites.txt gvcfs/genotyping/chr01_GATK.vcf /global/scratch/makman/GATK/bcftools_isec/chr01_1_JS_GATK/JS_MA_comp.txt


python /global/home/users/makman/git/Helianthus/shells/variant_calling/new/JS_comp/not_MA.py /global/scratch/makman/GATK/bcftools_isec/chr01_1_JS_GATK_INDEL/sites.txt gvcfs/genotyping/chr01_GATK.vcf /global/scratch/makman/GATK/bcftools_isec/chr01_1_JS_GATK_INDEL/JS_MA_comp.txt