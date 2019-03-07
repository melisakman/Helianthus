#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/sams/samtools
#SBATCH -J fildup3
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/dupfilter_samtools1.out
#SBATCH -e /global/home/users/makman/GATK/outs/dupfilter_samtools1.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

# gunzip samtools_invariant_chr01.vcf.gz 
# gunzip samtools_invariant_chr02.vcf.gz 
gunzip samtools_invariant_chr03.vcf.gz 
# gunzip samtools_invariant_chr04.vcf.gz 
# gunzip samtools_invariant_chr05.vcf.gz 
# gunzip samtools_invariant_chr06.vcf.gz 
# gunzip samtools_invariant_chr07.vcf.gz 
# gunzip samtools_invariant_chr08.vcf.gz 
# gunzip samtools_invariant_chr09.vcf.gz 
# gunzip samtools_invariant_chr10.vcf.gz 
# gunzip samtools_invariant_chr11.vcf.gz 
# gunzip samtools_invariant_chr12.vcf.gz 
# gunzip samtools_invariant_chr13.vcf.gz 
# gunzip samtools_invariant_chr14.vcf.gz 
# gunzip samtools_invariant_chr15.vcf.gz 
# gunzip samtools_invariant_chr16.vcf.gz 
# gunzip samtools_invariant_chr17.vcf.gz 

# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr01.vcf samtools_invariant_chr01_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr02.vcf samtools_invariant_chr02_dupsRemoved.vcf
python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr03.vcf samtools_invariant_chr03_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr04.vcf samtools_invariant_chr04_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr05.vcf samtools_invariant_chr05_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr06.vcf samtools_invariant_chr06_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr07.vcf samtools_invariant_chr07_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr08.vcf samtools_invariant_chr08_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr09.vcf samtools_invariant_chr09_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr10.vcf samtools_invariant_chr10_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr11.vcf samtools_invariant_chr11_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr12.vcf samtools_invariant_chr12_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr13.vcf samtools_invariant_chr13_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr14.vcf samtools_invariant_chr14_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr15.vcf samtools_invariant_chr15_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr16.vcf samtools_invariant_chr16_dupsRemoved.vcf
# python ~/git/Helianthus/shells/variant_calling/old/samtools_VC/13-filter/samtools_filter_by_qual.py samtools_invariant_chr17.vcf samtools_invariant_chr17_dupsRemoved.vcf

/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c samtools_invariant_chr03_dupsRemoved.vcf > samtools_invariant_chr03_dupsRemoved.vcf.gz

