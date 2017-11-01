#!/bin/bash 
#SBATCH -D /clusterfs/vector/scratch/makman/Hubnerdata/newFiltering/
#SBATCH -J ancestry
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=18000
#SBATCH --time=48:00:00
#SBATCH -o /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_dataStructure.out
#SBATCH -e /clusterfs/vector/scratch/makman/ancestry/outs/ancestry_dataStructure.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All
#SBATCH --array=1-17
module load python
# gunzip *_ordered.vcf.gz
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr01_filter01.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr01_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr02_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr02_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr03_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr03_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr04_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr04_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr05_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr05_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr06_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr06_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr07_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr07_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr08_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr08_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr09_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr09_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr10_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr10_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr11_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr11_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr12_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr12_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr13_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr13_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr14_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr14_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr15_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr15_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr16_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr16_ancestry_dataStructure.txt
python /clusterfs/vector/scratch/makman/ancestry/ancestry_informative_from_vcf_dataStructure.py HanXRQChr17_filter01_ordered.vcf /clusterfs/vector/scratch/makman/ancestry/results/dataStructure/HanXRQChr17_ancestry_dataStructure.txt

