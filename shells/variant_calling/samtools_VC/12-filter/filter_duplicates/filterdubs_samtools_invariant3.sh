#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/samtools_VC/
#SBATCH -J fildup3
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=4
#SBATCH --time=72:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/dupfilter_samtools3.out
#SBATCH -e /global/home/users/makman/GATK/outs/dupfilter_samtools3.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# gunzip -c samtools_invariant_chr02_Filtered.vcf.gz > samtools_invariant_chr02_Filtered.vcf
# gunzip -c samtools_invariant_chr03_Filtered.vcf.gz > samtools_invariant_chr03_Filtered.vcf
# gunzip -c samtools_invariant_chr04_Filtered.vcf.gz > samtools_invariant_chr04_Filtered.vcf
# gunzip -c samtools_invariant_chr05_Filtered.vcf.gz > samtools_invariant_chr05_Filtered.vcf
# gunzip -c samtools_invariant_chr06_Filtered.vcf.gz > samtools_invariant_chr06_Filtered.vcf
# gunzip -c samtools_invariant_chr07_Filtered.vcf.gz > samtools_invariant_chr07_Filtered.vcf
# gunzip -c samtools_invariant_chr08_Filtered.vcf.gz > samtools_invariant_chr08_Filtered.vcf
# gunzip -c samtools_invariant_chr09_Filtered.vcf.gz > samtools_invariant_chr09_Filtered.vcf
gunzip -c samtools_invariant_chr10_Filtered.vcf.gz > samtools_invariant_chr10_Filtered.vcf
gunzip -c samtools_invariant_chr11_Filtered.vcf.gz > samtools_invariant_chr11_Filtered.vcf
gunzip -c samtools_invariant_chr12_Filtered.vcf.gz > samtools_invariant_chr12_Filtered.vcf
gunzip -c samtools_invariant_chr13_Filtered.vcf.gz > samtools_invariant_chr13_Filtered.vcf
# gunzip -c samtools_invariant_chr14_Filtered.vcf.gz > samtools_invariant_chr14_Filtered.vcf
# gunzip -c samtools_invariant_chr15_Filtered.vcf.gz > samtools_invariant_chr15_Filtered.vcf
# gunzip -c samtools_invariant_chr16_Filtered.vcf.gz > samtools_invariant_chr16_Filtered.vcf
# gunzip -c samtools_invariant_chr17_Filtered.vcf.gz > samtools_invariant_chr17_Filtered.vcf

# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr01_Filtered.vcf samtools_invariant_chr01_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr02_Filtered.vcf samtools_invariant_chr02_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr03_Filtered.vcf samtools_invariant_chr03_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr04_Filtered.vcf samtools_invariant_chr04_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr05_Filtered.vcf samtools_invariant_chr05_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr06_Filtered.vcf samtools_invariant_chr06_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr07_Filtered.vcf samtools_invariant_chr07_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr08_Filtered.vcf samtools_invariant_chr08_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr09_Filtered.vcf samtools_invariant_chr09_Filtered_dupsRemoved.vcf
python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr10_Filtered.vcf samtools_invariant_chr10_Filtered_dupsRemoved.vcf
python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr11_Filtered.vcf samtools_invariant_chr11_Filtered_dupsRemoved.vcf
python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr12_Filtered.vcf samtools_invariant_chr12_Filtered_dupsRemoved.vcf
python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr13_Filtered.vcf samtools_invariant_chr13_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr14_Filtered.vcf samtools_invariant_chr14_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr15_Filtered.vcf samtools_invariant_chr15_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr16_Filtered.vcf samtools_invariant_chr16_Filtered_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/samtools_VC12-filter/samtools_filter_by_qual.py samtools_invariant_chr17_Filtered.vcf samtools_invariant_chr17_Filtered_dupsRemoved.vcf


