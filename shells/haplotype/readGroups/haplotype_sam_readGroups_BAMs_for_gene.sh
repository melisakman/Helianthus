#!/bin/bash
#
#SBATCH --job-name=base_calib
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/Haplo_by_gene/BAMs_for_gene/eski
#SBATCH --nodes=1
#SBATCH --time=24:00:00
#SBATCH --mem=32000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_readGroup_bam_4_gene.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/base_calibrate_readGroup_bam_4_gene.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load picard

# Count number of genes in bed file and add 1 for loop  ***** CHANGE BED FILE IN NEXT LINE *******
Total_lines=`grep -c "^" Bens_genes.bed`
Total_lines=`expr $Total_lines + 1`

# Loops through each line of the bed file and does phasing for the gene
Line_to_read=1
while [ $Line_to_read -lt $Total_lines ]
do
   # ********* CHANGE BED FILE IN NEXT LINE (do not modify "Current_gene_tested.bed") ********
  sed "${Line_to_read}q;d" Bens_genes.bed > Current_gene_tested.bed;
  Line_to_read=`expr $Line_to_read + 1`
  
	
	var_current_gene_name=`cut -f 4 Current_gene_tested.bed` 
		

	java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Reads_Eski_${var_current_gene_name}_SD2W-18.bam O=Reads_${var_current_gene_name}_SD2W-18.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SD2W-18
	java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Reads_Eski_${var_current_gene_name}_SD1W-35.bam O=Reads_${var_current_gene_name}_SD1W-35.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SD1W-35
	java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Reads_Eski_${var_current_gene_name}_SK1W-Q.bam O=Reads_${var_current_gene_name}_SK1W-Q.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=SK1W-Q
	java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Reads_Eski_${var_current_gene_name}_IA2W-17.bam O=Reads_${var_current_gene_name}_IA2W-17.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=IA2W-17
	java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Reads_Eski_${var_current_gene_name}_MO1W-39.bam O=Reads_${var_current_gene_name}_MO1W-39.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MO1W-39
	java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Reads_Eski_${var_current_gene_name}_IA1W-1.bam O=Reads_${var_current_gene_name}_IA1W-1.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=IA1W-1
	java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Reads_Eski_${var_current_gene_name}_KS1W-27.bam O=Reads_${var_current_gene_name}_KS1W-27.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=KS1W-27
	java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Reads_Eski_${var_current_gene_name}_MB1W-40.bam O=Reads_${var_current_gene_name}_MB1W-40.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=MB1W-40
	java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Reads_Eski_${var_current_gene_name}_ND1W-6.bam O=Reads_${var_current_gene_name}_ND1W-6.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=ND1W-6
	java -jar /clusterfs/vector/home/groups/software/sl-6.x86_64/modules/picard/2.4.1/picard.jar AddOrReplaceReadGroups I=Reads_Eski_${var_current_gene_name}_KS2W-35.bam O=Reads_${var_current_gene_name}_KS2W-35.bam RGPL=Illumina RGPU=1 RGLB=1 RGSM=KS2W-35
	
done
	