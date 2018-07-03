#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined
#SBATCH -J filFB3
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=24:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/bcftools_filter2_freebayes3.out
#SBATCH -e /global/home/users/makman/GATK/outs/bcftools_filter2_freebayes3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# zcat old/freebayes_invariant_chr01_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > freebayes_invariant_chr01_allFiltered.vcf
# zcat old/freebayes_invariant_chr02_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr02_allFiltered.vcf.gz
zcat old/freebayes_invariant_chr03_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr03_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr04_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr04_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr05_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr05_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr06_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr06_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr07_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr07_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr08_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr08_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr09_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr09_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr10_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr10_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr11_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr11_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr12_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr12_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr13_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr13_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr14_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr14_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr15_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr15_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr16_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr16_allFiltered.vcf.gz
# zcat old/freebayes_invariant_chr17_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 40 || TYPE = "indel" && QUAL/ > 40 || TYPE = "mnp" && QUAL > 40 || TYPE = "ref" && QUAL > 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr17_allFiltered.vcf.gz

# zcat old/freebayes_invariant_chr01_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 || TYPE = "indel" && QUAL/DP > 2.0 || TYPE = "mnp" && QUAL/DP > 2.0 || TYPE = "ref" && QUAL < 0.0000434' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > freebayes_invariant_chr01_qualbydepth.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 1.0 || TYPE = "indel" && QUAL/DP > 1.0 || TYPE = "mnp" && QUAL/DP > 1.0 || TYPE = "ref" && QUAL < 0.0000434' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > freebayes_invariant_chr01_allFiltered_QbyD1.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20.0 && DP < 60 || TYPE = "indel" && QUAL > 20.0 && DP < 60 || TYPE = "mnp" && QUAL > 20.0 && DP < 60|| TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > freebayes_invariant_chr01_allFiltered_Q20DP60_invariant3rdQuan.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 20.0 && DP < 500 || TYPE = "indel" && QUAL > 20.0 && DP < 60 || TYPE = "mnp" && QUAL > 20.0 && DP < 60|| TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > freebayes_invariant_chr01_allFiltered_Q20DP500_invariant3rdQuan.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 0.25 || TYPE = "indel" && QUAL/DP > 0.25 || TYPE = "mnp" && QUAL/DP > 0.25|| TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > freebayes_invariant_chr01_allFiltered_QbyDP025_invariant3rdQuan.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 1 && SAF > 0 && SAR > 0 && RPR > 1 && RPL > 1 || TYPE = "indel" && QUAL > 1 && SAF > 0 && SAR > 0 && RPR > 1 && RPL > 1 || TYPE = "mnp" && QUAL > 1 && SAF > 0 && SAR > 0 && RPR > 1 && RPL > 1 || TYPE = "ref" && QUAL < 2.723e-15 && SAF > 0 && SAR > 0 && RPR > 1 && RPL > 1' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > freebayes_invariant_chr01_allFiltered_Q1SAFRPR.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 1 && SAF > 0 && SAR > 0 || TYPE = "indel" && QUAL > 1 && SAF > 0 && SAR > 0 || TYPE = "mnp" && QUAL > 1 && SAF > 0 && SAR > 0 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > freebayes_invariant_chr01_allFiltered_Q1SAF.vcf
# cat old/freebayes_invariant_chr01_all.vcf | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 1 && RPR > 1 && RPL > 1 || TYPE = "indel" && QUAL > 1 && RPR > 1 && RPL > 1 || TYPE = "mnp" && QUAL > 1 && RPR > 1 && RPL > 1 || TYPE = "ref" && QUAL < 2.723e-15' | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > freebayes_invariant_chr01_allFiltered_Q1RPR.vcf
# zcat old/freebayes_invariant_chr01_all.vcf.gz | vcftools --vcf - --minDP 3 --max-missing 0.8 --maxDP 25 --recode --stdout > freebayes_invariant_chr01_vcftoolsOnly.vcf
