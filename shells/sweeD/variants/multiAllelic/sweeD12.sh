#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/sweed/
#SBATCH -J vcf2genotype
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/sweed12.out
#SBATCH -e /global/home/users/makman/H12/outs/sweed12.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py ../GATK/bcftools_isec/final/chr12_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr12_variants.SF
./SweeD-P -name chr12_variants -input chr12_variants.SF -grid 15000 -folded -threads 20

