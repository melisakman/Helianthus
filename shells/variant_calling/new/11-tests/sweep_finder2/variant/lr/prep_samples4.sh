#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/final/
#SBATCH -J vcf2genotype
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/H12/outs/sweed4.out
#SBATCH -e /global/home/users/makman/H12/outs/sweed4.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load gcc/4.8.5 
module load java
module load gatk/4.0.1.2
module load bio/vcftools/0.1.15
module load hapflk/1.4
export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr13_final.vcf.gz \
--select-type-to-include SNP \
-O chr13_SNP.vcf.gz

gunzip chr13_SNP.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr14_final.vcf.gz \
--select-type-to-include SNP \
-O chr14_SNP.vcf.gz

gunzip chr14_SNP.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr15_final.vcf.gz \
--select-type-to-include SNP \
-O chr15_SNP.vcf.gz

gunzip chr15_SNP.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr16_final.vcf.gz \
--select-type-to-include SNP \
-O chr16_SNP.vcf.gz

gunzip chr16_SNP.vcf.gz

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" SelectVariants \
-R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
-V vcfgz/chr17_final.vcf.gz \
--select-type-to-include SNP \
-O chr17_SNP.vcf.gz

gunzip chr17_SNP.vcf.gz


# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr01_SNP.vcf lr_list.txt sweep_finder/chr01_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr02_SNP.vcf lr_list.txt sweep_finder/chr02_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr03_SNP.vcf lr_list.txt sweep_finder/chr03_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr04_SNP.vcf lr_list.txt sweep_finder/chr04_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr05_SNP.vcf lr_list.txt sweep_finder/chr05_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr06_SNP.vcf lr_list.txt sweep_finder/chr06_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr07_SNP.vcf lr_list.txt sweep_finder/chr07_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr08_SNP.vcf lr_list.txt sweep_finder/chr08_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr09_SNP.vcf lr_list.txt sweep_finder/chr09_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr10_SNP.vcf lr_list.txt sweep_finder/chr10_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr11_SNP.vcf lr_list.txt sweep_finder/chr11_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr12_SNP.vcf lr_list.txt sweep_finder/chr12_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr13_SNP.vcf lr_list.txt sweep_finder/chr13_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr14_SNP.vcf lr_list.txt sweep_finder/chr14_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr15_SNP.vcf lr_list.txt sweep_finder/chr15_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr16_SNP.vcf lr_list.txt sweep_finder/chr16_SNP.SF
# python ~/git/Helianthus/shells/sweeD/vcf2sweedFormat.py chr17_SNP.vcf lr_list.txt sweep_finder/chr17_SNP.SF
# 
# cat sweep_finder/chr01_SNP_INDEL.SF > sweep_finder/01_toCombine.txt
# tail -n +2 sweep_finder/chr02_SNP.SF > sweep_finder/02_toCombine.txt
# tail -n +2 sweep_finder/chr03_SNP.SF > sweep_finder/03_toCombine.txt
# tail -n +2 sweep_finder/chr04_SNP.SF > sweep_finder/04_toCombine.txt
# tail -n +2 sweep_finder/chr05_SNP.SF > sweep_finder/05_toCombine.txt
# tail -n +2 sweep_finder/chr06_SNP.SF > sweep_finder/06_toCombine.txt
# tail -n +2 sweep_finder/chr07_SNP.SF > sweep_finder/07_toCombine.txt
# tail -n +2 sweep_finder/chr08_SNP.SF > sweep_finder/08_toCombine.txt
# tail -n +2 sweep_finder/chr09_SNP.SF > sweep_finder/09_toCombine.txt
# tail -n +2 sweep_finder/chr10_SNP.SF > sweep_finder/10_toCombine.txt
# tail -n +2 sweep_finder/chr11_SNP.SF > sweep_finder/11_toCombine.txt
# tail -n +2 sweep_finder/chr12_SNP.SF > sweep_finder/12_toCombine.txt
# tail -n +2 sweep_finder/chr13_SNP.SF > sweep_finder/13_toCombine.txt
# tail -n +2 sweep_finder/chr14_SNP.SF > sweep_finder/14_toCombine.txt
# tail -n +2 sweep_finder/chr15_SNP.SF > sweep_finder/15_toCombine.txt
# tail -n +2 sweep_finder/chr16_SNP.SF > sweep_finder/16_toCombine.txt
# tail -n +2 sweep_finder/chr17_SNP.SF > sweep_finder/17_toCombine.txt
# 
# cat sweep_finder/*_toCombine.txt > sweep_finder/all_variants.SF
# 
# /clusterfs/rosalind/users/makman/SF2/SweepFinder2 -f sweep_finder/all_variants.SF sweep_finder/all_spectFile.txt
# 
