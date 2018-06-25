#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J vcfshuffl6
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/shufflecols_samtools6.out
#SBATCH -e /global/home/users/makman/GATK/outs/shufflecols_samtools6.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr01_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr01_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr02_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr02_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr03_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr03_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr04_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr04_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr05_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr05_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr06_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr06_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr07_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr07_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr08_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr08_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr09_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr09_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr10_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr10_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr11_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr11_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr12_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr12_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr13_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr13_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr14_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr14_allFilteredshuffled.vcf.gz
# /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr15_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr15_allFilteredshuffled.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr16_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr16_allFilteredshuffled.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t fastq/invariants/VCMA_chr01_SNP_hardfiltered.vcf.gz samtools_VC/samtools_invariant_chr17_allFiltered.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > samtools_VC/shuffleCols/samtools_invariant_chr17_allFilteredshuffled.vcf.gz
