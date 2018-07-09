#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec
#SBATCH -J Truth_filter
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --time=8:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/truthSet_filter.out
#SBATCH -e /global/home/users/makman/GATK/outs/truthSet_filter.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

zcat chr01_3/chr01_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr01.vcf
zcat chr02_3/chr02_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr02.vcf
zcat chr03_3/chr03_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr03.vcf
zcat chr04_3/chr04_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr04.vcf
zcat chr05_3/chr05_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr05.vcf
zcat chr06_3/chr06_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr06.vcf
zcat chr07_3/chr07_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr07.vcf
zcat chr08_3/chr08_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr08.vcf
zcat chr09_3/chr09_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr09.vcf
zcat chr10_3/chr10_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr10.vcf
zcat chr11_3/chr11_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr11.vcf
zcat chr12_3/chr12_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr12.vcf
zcat chr13_3/chr13_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr13.vcf
zcat chr14_3/chr14_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr14.vcf
zcat chr15_3/chr15_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr15.vcf
zcat chr16_3/chr16_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr16.vcf
zcat chr17_3/chr17_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL > 100 || TYPE = "indel" && QUAL > 100 || TYPE = "mnp" && QUAL > 100' > truthSet/truthSet_chr17.vcf

zcat chr01_3/chr01_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr01.vcf
zcat chr02_3/chr02_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr02.vcf
zcat chr03_3/chr03_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr03.vcf
zcat chr04_3/chr04_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr04.vcf
zcat chr05_3/chr05_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr05.vcf
zcat chr06_3/chr06_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr06.vcf
zcat chr07_3/chr07_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr07.vcf
zcat chr08_3/chr08_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr08.vcf
zcat chr09_3/chr09_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr09.vcf
zcat chr10_3/chr10_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr10.vcf
zcat chr11_3/chr11_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr11.vcf
zcat chr12_3/chr12_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr12.vcf
zcat chr13_3/chr13_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr13.vcf
zcat chr14_3/chr14_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr14.vcf
zcat chr15_3/chr15_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr15.vcf
zcat chr16_3/chr16_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr16.vcf
zcat chr17_3/chr17_intersect.vcf.gz | bcftools filter -g 5 -i 'TYPE = "ref" && QUAL > 100' | vcftools --vcf - --minDP 5 --max-missing 0.9 --maxDP 25 --recode --stdout > truthSet/truthSet_ref_chr17.vcf

