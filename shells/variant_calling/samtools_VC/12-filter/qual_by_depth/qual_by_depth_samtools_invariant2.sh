#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/samtools_VC/
#SBATCH -J filST2
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=16000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/qual_by_depth_filterUpdate_samtools2.out
#SBATCH -e /global/home/users/makman/GATK/outs/qual_by_depth_filterUpdate_samtools2.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
module load java

# cat old/samtools_invariant_chr01_combined.vcf | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr01_Filtered.vcf.gz
# zcat old/samtools_invariant_chr02_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr02_Filtered.vcf.gz
# zcat old/samtools_invariant_chr03_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr03_Filtered.vcf.gz
# zcat old/samtools_invariant_chr04_combined.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr04_Filtered.vcf.gz
zcat old/samtools_invariant_chr05.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr05_Filtered.vcf.gz
zcat old/samtools_invariant_chr06.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr06_Filtered.vcf.gz
zcat old/samtools_invariant_chr07.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr07_Filtered.vcf.gz
zcat old/samtools_invariant_chr08.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr08_Filtered.vcf.gz
zcat old/samtools_invariant_chr09.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr09_Filtered.vcf.gz
# zcat old/samtools_invariant_chr10.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr10_Filtered.vcf.gz
# zcat old/samtools_invariant_chr11.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr11_Filtered.vcf.gz
# zcat old/samtools_invariant_chr12.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr12_Filtered.vcf.gz
# zcat old/samtools_invariant_chr13.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr13_Filtered.vcf.gz
# zcat old/samtools_invariant_chr14.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr14_Filtered.vcf.gz
# zcat old/samtools_invariant_chr15.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr15_Filtered.vcf.gz
# zcat old/samtools_invariant_chr16.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr16_Filtered.vcf.gz
# zcat old/samtools_invariant_chr17.vcf.gz | bcftools filter -g 5 -i 'TYPE = "indel" || TYPE = "snp" || TYPE = "mnp" || TYPE = "ref"' | bcftools filter -g 5 -i 'QUAL/DP > 2.0' | vcf-sort -t /clusterfs/rosalind/users/makman/temp | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_invariant_chr17_Filtered.vcf.gz


