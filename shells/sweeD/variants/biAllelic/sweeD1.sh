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
#SBATCH -o /global/home/users/makman/H12/outs/sweed1.out
#SBATCH -e /global/home/users/makman/H12/outs/sweed1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All


# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr01_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr01_variants_biallelic.SF
# ./SweeD-P -name chr01_variants_biallelic -input chr01_variants_biallelic.SF -grid 15000 -folded -threads 20

# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat_biallelic.py ../GATK/bcftools_isec/final/chr01_final_lessStringentInvariants_onlyvariants.vcf ../GATK/bcftools_isec/final/lr_list.txt chr01_variants_biallelic_unfolded.SF
# ./SweeD-P -name chr01_variants_biallelic_unfolded -input chr01_variants_biallelic_unfolded.SF -grid 15000 -folded -threads 20

./SweeD-P -name chr01_variants_biallelic_1000 -input chr01_variants_biallelic.SF -grid 1000 -folded -threads 20
