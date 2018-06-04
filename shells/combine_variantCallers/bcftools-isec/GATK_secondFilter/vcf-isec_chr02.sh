#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/
#SBATCH -J isecchr02
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/vcf-isec_chr02.out
#SBATCH -e /global/home/users/makman/GATK/outs/vcf-isec_chr02.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load htslib/1.6
module load bcftools/1.6
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

# gunzip fastq/invariants/filtered_combined/VCMA_GATK_chr02_secondFilter.vcf.gz
# gunzip freebayes/final_combined/freebayes_invariant_chr02_allFiltered.vcf.gz
# gunzip samtools_VC/samtools_invariant_chr02_Filtered_sorted.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c fastq/invariants/filtered_combined/VCMA_GATK_chr02_secondFilter.vcf > fastq/invariants/filtered_combined/VCMA_GATK_chr02_secondFilter.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c freebayes/final_combined/freebayes_invariant_chr02_allFiltered.vcf > freebayes/final_combined/freebayes_invariant_chr02_allFiltered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_VC/samtools_invariant_chr02_Filtered_sorted.vcf > samtools_VC/samtools_invariant_chr02_Filtered_sorted.vcf.gz
# 
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./fastq/invariants/filtered_combined/VCMA_GATK_chr02_secondFilter.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./freebayes/final_combined/freebayes_invariant_chr02_allFiltered.vcf.gz
# /clusterfs/rosalind/users/makman/tabix-0.2.6/tabix ./samtools_VC/samtools_invariant_chr02_Filtered_sorted.vcf.gz

bcftools isec -n +2 -O z -p vcf-isec_chr02 fastq/invariants/filtered_combined/VCMA_GATK_chr02_secondFilter.vcf.gz \
freebayes/final_combined/freebayes_invariant_chr02_allFiltered.vcf.gz \
samtools_VC/samtools_invariant_chr02_Filtered_sorted.vcf.gz

bcftools view -S bcftools_isec/secondFilter/sample_names.txt 0000.vcf.gz | bcftools reheader -s bcftools_isec/secondFilter/sample_rename.txt -o bcftools_isec/secondFilter/vcf-isec_chr02/0000_renamed.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c bcftools_isec/secondFilter/vcf-isec_chr02/0000_renamed.vcf > bcftools_isec/secondFilter/vcf-isec_chr02/0000_renamed.vcf.gz

/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t bcftools_isec/secondFilter/vcf-isec_chr02/0000_renamed.vcf.gz bcftools_isec/secondFilter/vcf-isec_chr02/0001.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > bcftools_isec/secondFilter/vcf-isec_chr02/0001_sorted.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-shuffle-cols -t bcftools_isec/secondFilter/vcf-isec_chr02/0000_renamed.vcf.gz bcftools_isec/secondFilter/vcf-isec_chr02/0002.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > bcftools_isec/secondFilter/vcf-isec_chr02/0002_sorted.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf bcftools_isec/secondFilter/vcf-isec_chr02/0000_renamed.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf bcftools_isec/secondFilter/vcf-isec_chr02/0001_sorted.vcf.gz
/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf bcftools_isec/secondFilter/vcf-isec_chr02/0002_sorted.vcf.gz
/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/bin/vcf-isec -n +2 \
bcftools_isec/secondFilter/vcf-isec_chr02/0000_renamed.vcf.gz bcftools_isec/secondFilter/vcf-isec_chr02/0001_sorted.vcf.gz bcftools_isec/secondFilter/vcf-isec_chr02/0002_sorted.vcf.gz | /clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c > bcftools_isec/secondFilter/vcf-isec_chr02/chr02_intersect.vcf.gz
