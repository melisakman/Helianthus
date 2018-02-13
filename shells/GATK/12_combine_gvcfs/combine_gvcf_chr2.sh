#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/makman/GATK/fastq/ready/sams/
#SBATCH -J comg_nsavio
#SBATCH --account=co_rosalind
#SBATCH --partition=savio
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --mem=64000
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH -o /global/home/users/makman/GATK/outs/combine_gvcfs_chr01.out
#SBATCH -e /global/home/users/makman/GATK/outs/combine_gvcfs_chr01.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load java

/clusterfs/rosalind/users/makman/gatk-4.0.0.0/gatk --java-options "-Djava.io.tmpdir=/clusterfs/rosalind/users/makman/temp_files2/ -Xmx240G" CombineGVCFs \
-R /clusterfs/rosalind/users/makman/HanXRQr1.0-20151230.fa \
-L HanXRQChr01 \
--variant Anzac_Pueblo.g.vcf.gz \
--variant Arikara.g.vcf.gz \
--variant HA124.g.vcf.gz \
--variant HA316.g.vcf.gz \
--variant HA404.g.vcf.gz \
--variant HA433.g.vcf.gz \
--variant HA442.g.vcf.gz \
--variant HA821.g.vcf.gz \
--variant HA89.g.vcf.gz \
--variant Havasupai.g.vcf.gz \
--variant Hidatsa1.g.vcf.gz \
--variant Hopi.g.vcf.gz \
--variant Hopi_PPN285.g.vcf.gz \
--variant Laguna_Pueblo.g.vcf.gz \
--variant Mandan2.g.vcf.gz \
--variant MexCult1.g.vcf.gz \
--variant MexCult14.g.vcf.gz \
--variant MexCult15.g.vcf.gz \
--variant MexCult3.g.vcf.gz \
--variant MexCult6.g.vcf.gz \
--variant MexCult7.g.vcf.gz \
--variant MexCult9.g.vcf.gz \
--variant PPN046.g.vcf.gz \
--variant PPN083.g.vcf.gz \
--variant PPN255_Manchurian.g.vcf.gz \
--variant PPN262.g.vcf.gz \
--variant Pueblo.g.vcf.gz \
--variant RHA271.g.vcf.gz \
--variant RHA309.g.vcf.gz \
--variant RHA311.g.vcf.gz \
--variant RHA328.g.vcf.gz \
--variant RHA355.g.vcf.gz \
--variant RHA358.g.vcf.gz \
--variant RHA408.g.vcf.gz \
--variant RHA426.g.vcf.gz \
--variant RHA857.g.vcf.gz \
--variant SF33.g.vcf.gz \
--variant Seneca.g.vcf.gz \
--variant VIR847.g.vcf.gz \
--variant Zuni.g.vcf.gz \
--variant ann01-cwIA.g.vcf.gz \
--variant ann04-nwAR.g.vcf.gz \
--variant ann05-ccNM.g.vcf.gz \
--variant ann06-seWY.g.vcf.gz \
--variant ann08-ceTN.g.vcf.gz \
--variant ann10-ccIL.g.vcf.gz \
--variant ann20-seAZ.g.vcf.gz \
--variant ann28-swSK.g.vcf.gz \
--variant ann29-neSD.g.vcf.gz \
--variant ann34-cwKS.g.vcf.gz \
--variant ann39-ncNE.g.vcf.gz \
--variant ann44-ccCA.g.vcf.gz \
--variant annIA.g.vcf.gz \
--variant annIA1W-1.g.vcf.gz \
--variant annIA2W-17.g.vcf.gz \
--variant annKS.g.vcf.gz \
--variant annKS1W-27.g.vcf.gz \
--variant annKS2W-35.g.vcf.gz \
--variant annMB1W-40.g.vcf.gz \
--variant annMO1W-39.g.vcf.gz \
--variant annND1W-6.g.vcf.gz \
--variant annNM.g.vcf.gz \
--variant annSD1W-35.g.vcf.gz \
--variant annSD2W-18.g.vcf.gz \
--variant annSK1W-Q.g.vcf.gz \
--variant annWY.g.vcf.gz \
-O combined_chr01.g.vcf.gz
