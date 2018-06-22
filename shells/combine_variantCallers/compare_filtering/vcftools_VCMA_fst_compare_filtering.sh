#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/bcftools_isec/
#SBATCH -J vcffst
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --time=4:00:00
#SBATCH -o /global/home/users/makman/vcftools/outs/vcftools_VCMA_fst_compareFiltering_b.out
#SBATCH -e /global/home/users/makman/vcftools/outs/vcftools_VCMA_fst_compareFiltering_b.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

# vcftools --vcf secondFilter/vcf-isec_chr01/chr01_intersect.vcf --weir-fst-pop secondFilter/wd_list.txt --weir-fst-pop secondFilter/lr_list.txt --fst-window-size 10000 --out ../compare_filtering/second_filtering_2

# vcftools --gzvcf secondFilter/vcf-isec_chr01_3/chr01_intersect_3.vcf.gz --weir-fst-pop secondFilter/wd_list.txt --weir-fst-pop secondFilter/lr_list.txt --fst-window-size 10000 --out ../compare_filtering/second_filtering_3

# vcftools --gzvcf hardFilter/vcf-isec_chr01_hardFilter/chr01_intersect.vcf.gz --weir-fst-pop secondFilter/wd_list.txt --weir-fst-pop secondFilter/lr_list.txt --fst-window-size 10000 --out ../compare_filtering/hard_filtering_2

# vcftools --gzvcf hardFilter/vcf-isec_chr01_hardFilter_3/chr01_intersect_3.vcf.gz --weir-fst-pop secondFilter/wd_list.txt --weir-fst-pop secondFilter/lr_list.txt --fst-window-size 10000 --out ../compare_filtering/hard_filtering_3

# vcftools --gzvcf ../fastq/invariants/filtered_combined/VCMA_GATK_chr01_sorted.vcf.gz --weir-fst-pop secondFilter/wd_list.txt --weir-fst-pop secondFilter/lr_list.txt --fst-window-size 10000 --out ../compare_filtering/GATK_hard

vcftools --vcf ../fastq/invariants/filtered_combined/VCMA_GATK_chr01_secondFilter.vcf --weir-fst-pop secondFilter/wd_list.txt --weir-fst-pop secondFilter/lr_list.txt --fst-window-size 10000 --out ../compare_filtering/GATK_second

# vcftools --gzvcf ../freebayes/final_combined/freebayes_invariant_chr01_allFiltered.vcf.gz --weir-fst-pop secondFilter/wd_list.txt --weir-fst-pop secondFilter/lr_list.txt --fst-window-size 10000 --out ../compare_filtering/FB

# vcftools --gzvcf ../samtools_VC/samtools_invariant_chr01_Filtered_sorted.vcf.gz --weir-fst-pop secondFilter/wd_list.txt --weir-fst-pop secondFilter/lr_list.txt --fst-window-size 10000 --out ../compare_filtering/ST


