#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/unfiltered
#SBATCH -J comchr06
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=24:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr06.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_combine_sort_chr06.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java


# bcftools filter -r HanXRQChr06 -i 'TYPE = "snp"' unfiltered_2plus_GATK_annot_VSQR80_G4.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > VQSRfiltered_80_G4_SNP_chr06.vcf.gz

# bcftools filter -i 'TYPE = "indel" || TYPE = "ref"' ../chr06_filtered_2plus_GATK_annot.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../filtered_indelRef_chr06.vcf.gz

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-concat \
VQSRfiltered_80_G4_SNP_chr06.vcf.gz \
../filtered_indelRef_chr06.vcf.gz | vcf-sort -t /clusterfs/rosalind/users/makman/temp \
| /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > ../final/chr06_final.vcf.gz

