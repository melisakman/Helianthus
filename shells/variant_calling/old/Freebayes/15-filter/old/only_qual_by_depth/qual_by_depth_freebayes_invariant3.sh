#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/freebayes/final_combined
#SBATCH -J filFB3
#SBATCH --account=fc_blackman
#SBATCH --partition=savio2
#SBATCH --mem=16000
#SBATCH --qos=savio_normal
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/qual_by_depth_freebayes3.out
#SBATCH -e /global/home/users/makman/GATK/outs/qual_by_depth_freebayes3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bcftools/1.6
module load bio/vcftools
module load java

# zcat old/freebayes_invariant_chr01_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr01_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr02_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr02_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr03_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr03_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr04_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr04_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr05_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr05_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr06_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr06_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr07_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr07_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr08_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr08_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr09_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr09_qual_by_depth.vcf.gz
zcat old/freebayes_invariant_chr10_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr10_qual_by_depth.vcf.gz
zcat old/freebayes_invariant_chr11_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr11_qual_by_depth.vcf.gz
zcat old/freebayes_invariant_chr12_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr12_qual_by_depth.vcf.gz
zcat old/freebayes_invariant_chr13_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr13_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr14_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr14_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr15_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr15_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr16_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr16_qual_by_depth.vcf.gz
# zcat old/freebayes_invariant_chr17_all.vcf.gz | bcftools filter -g 5 -i 'TYPE = "snp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "indel" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "mnp" && QUAL/DP > 2.0 && QUAL > 50 || TYPE = "ref" && QUAL < 0.0000434' | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > freebayes_invariant_chr17_qual_by_depth.vcf.gz
