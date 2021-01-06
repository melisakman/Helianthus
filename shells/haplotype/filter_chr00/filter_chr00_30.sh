#!/bin/bash
#SBATCH --job-name=filter-dedup
#SBATCH --partition=vector
#SBATCH --qos=vector_batch
#SBATCH -D /clusterfs/vector/scratch/makman/haplotype_networks/bams
#SBATCH --nodes=1
#SBATCH --time=6:00:00
#SBATCH --mem=48000
#SBATCH -o /clusterfs/vector/scratch/makman/haplotype_networks/outs/filter_chr00_new_VC_30.out
#SBATCH -e /clusterfs/vector/scratch/makman/haplotype_networks/outs/filter_chr00_new_VC_30.err
#SBATCH --mail-user=makman@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.3.1
# srun samtools view -b Anzac_Pueblo_417_HanXRQ.bam -L ./chr_group.txt > Anzac_Pueblo_417_HanXRQ_nochr00.bam
# srun samtools view -b Anzac_Pueblo_418_HanXRQ.bam -L ./chr_group.txt > Anzac_Pueblo_418_HanXRQ_nochr00.bam
# srun samtools view -b Anzac_Pueblo_419_HanXRQ.bam -L ./chr_group.txt > Anzac_Pueblo_419_HanXRQ_nochr00.bam
# srun samtools view -b Arikara_424_HanXRQ.bam -L ./chr_group.txt > Arikara_424_HanXRQ_nochr00.bam
# srun samtools view -b Arikara_425_HanXRQ.bam -L ./chr_group.txt > Arikara_425_HanXRQ_nochr00.bam
# srun samtools view -b Havasupai_480_HanXRQ.bam -L ./chr_group.txt > Havasupai_480_HanXRQ_nochr00.bam
# srun samtools view -b Havasupai_481_HanXRQ.bam -L ./chr_group.txt > Havasupai_481_HanXRQ_nochr00.bam
# srun samtools view -b Hidatsa1_482_HanXRQ.bam -L ./chr_group.txt > Hidatsa1_482_HanXRQ_nochr00.bam
# srun samtools view -b Hidatsa1_483_HanXRQ.bam -L ./chr_group.txt > Hidatsa1_483_HanXRQ_nochr00.bam
# srun samtools view -b Hidatsa1_484_HanXRQ.bam -L ./chr_group.txt > Hidatsa1_484_HanXRQ_nochr00.bam
# srun samtools view -b Hopi_1_HanXRQ.bam -L ./chr_group.txt > Hopi_1_HanXRQ_nochr00.bam
# srun samtools view -b Hopi_485_HanXRQ.bam -L ./chr_group.txt > Hopi_485_HanXRQ_nochr00.bam
# srun samtools view -b Hopi_486_HanXRQ.bam -L ./chr_group.txt > Hopi_486_HanXRQ_nochr00.bam
# srun samtools view -b Laguna_Pueblo_487_HanXRQ.bam -L ./chr_group.txt > Laguna_Pueblo_487_HanXRQ_nochr00.bam
# srun samtools view -b Laguna_Pueblo_488_HanXRQ.bam -L ./chr_group.txt > Laguna_Pueblo_488_HanXRQ_nochr00.bam
# srun samtools view -b Laguna_Pueblo_489_HanXRQ.bam -L ./chr_group.txt > Laguna_Pueblo_489_HanXRQ_nochr00.bam
# srun samtools view -b Mandan2_48a_HanXRQ.bam -L ./chr_group.txt > Mandan2_48a_HanXRQ_nochr00.bam
# srun samtools view -b Mandan2_48b_HanXRQ.bam -L ./chr_group.txt > Mandan2_48b_HanXRQ_nochr00.bam
# srun samtools view -b Mandan2_48c_HanXRQ.bam -L ./chr_group.txt > Mandan2_48c_HanXRQ_nochr00.bam
# srun samtools view -b MexCult14_50f_HanXRQ.bam -L ./chr_group.txt > MexCult14_50f_HanXRQ_nochr00.bam
# srun samtools view -b MexCult14_510_HanXRQ.bam -L ./chr_group.txt > MexCult14_510_HanXRQ_nochr00.bam
# srun samtools view -b MexCult1_513_HanXRQ.bam -L ./chr_group.txt > MexCult1_513_HanXRQ_nochr00.bam
# srun samtools view -b MexCult15_511_HanXRQ.bam -L ./chr_group.txt > MexCult15_511_HanXRQ_nochr00.bam
# srun samtools view -b MexCult15_512_HanXRQ.bam -L ./chr_group.txt > MexCult15_512_HanXRQ_nochr00.bam
# srun samtools view -b MexCult3_48d_HanXRQ.bam -L ./chr_group.txt > MexCult3_48d_HanXRQ_nochr00.bam
# srun samtools view -b MexCult3_48e_HanXRQ.bam -L ./chr_group.txt > MexCult3_48e_HanXRQ_nochr00.bam
# srun samtools view -b MexCult6_48f_HanXRQ.bam -L ./chr_group.txt > MexCult6_48f_HanXRQ_nochr00.bam
# srun samtools view -b MexCult6_490_HanXRQ.bam -L ./chr_group.txt > MexCult6_490_HanXRQ_nochr00.bam
# srun samtools view -b MexCult7_491_HanXRQ.bam -L ./chr_group.txt > MexCult7_491_HanXRQ_nochr00.bam
# srun samtools view -b MexCult7_492_HanXRQ.bam -L ./chr_group.txt > MexCult7_492_HanXRQ_nochr00.bam
# srun samtools view -b MexCult9_493_HanXRQ.bam -L ./chr_group.txt > MexCult9_493_HanXRQ_nochr00.bam
# srun samtools view -b MexCult9_494_HanXRQ.bam -L ./chr_group.txt > MexCult9_494_HanXRQ_nochr00.bam
# srun samtools view -b PPN046_78_HanXRQ.bam -L ./chr_group.txt > PPN046_78_HanXRQ_nochr00.bam
# srun samtools view -b PPN083_a5_HanXRQ.bam -L ./chr_group.txt > PPN083_a5_HanXRQ_nochr00.bam
# srun samtools view -b Pueblo_4c7_HanXRQ.bam -L ./chr_group.txt > Pueblo_4c7_HanXRQ_nochr00.bam
# srun samtools view -b Pueblo_4c8_HanXRQ.bam -L ./chr_group.txt > Pueblo_4c8_HanXRQ_nochr00.bam
# srun samtools view -b Pueblo_4c9_HanXRQ.bam -L ./chr_group.txt > Pueblo_4c9_HanXRQ_nochr00.bam
srun samtools view -b Seneca_4ca_HanXRQ.bam -L ./chr_group.txt > Seneca_4ca_HanXRQ_nochr00.bam
srun samtools view -b Seneca_4cb_HanXRQ.bam -L ./chr_group.txt > Seneca_4cb_HanXRQ_nochr00.bam
srun samtools view -b Zuni_4cc_HanXRQ.bam -L ./chr_group.txt > Zuni_4cc_HanXRQ_nochr00.bam
# srun samtools view -b Zuni_4cd_HanXRQ.bam -L ./chr_group.txt > Zuni_4cd_HanXRQ_nochr00.bam
# srun samtools view -b Zuni_4ce_HanXRQ.bam -L ./chr_group.txt > Zuni_4ce_HanXRQ_nochr00.bam

