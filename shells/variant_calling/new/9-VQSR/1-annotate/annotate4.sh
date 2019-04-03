#!/bin/bash 
#SBATCH -D /global/scratch/makman/GATK/bcftools_isec/
#SBATCH -J ann_chr04
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=80:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/VSQR_annot_unfilt_chr04.out
#SBATCH -e /global/home/users/makman/GATK/outs/VSQR_annot_unfilt_chr04.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java
module load gatk/4.0.1.2

mv chr04_2plus.vcf.gz chr04_2plus.vcf
/clusterfs/rosalind/users/makman/tabix-0.2.6/bgzip -c chr04_2plus.vcf > chr04_2plus.vcf.gz

/clusterfs/rosalind/users/makman/tabix-0.2.6/tabix -p vcf chr04_2plus.vcf.gz  

/global/scratch/makman/gatk-4.1.0.0/gatk --java-options "-Xmx64g -Djava.io.tmpdir=/global/scratch/makman/temp_files/" VariantAnnotator \
   -R /clusterfs/rosalind/users/makman/HanXRQr2/HanXRQr2.0-SUNRISE-2.1.genome.fasta \
   -T VariantAnnotator \
   -V chr04_2plus.vcf.gz \
   -O chr04_2plus_annot.vcf.gz \
   -A Coverage -A QualByDepth -A FisherStrand -A StrandOddsRatio -A MappingQualityRankSumTest -A ReadPosRankSumTest -A RMSMappingQuality -A InbreedingCoeff

