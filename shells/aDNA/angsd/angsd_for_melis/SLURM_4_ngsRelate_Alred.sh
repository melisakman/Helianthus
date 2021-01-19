#!/bin/bash
#
#SBATCH --job-name=ngsRelate_Alred
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=MaxMemPerNode
#SBATCH -D /global/scratch/nwales/Sunflower_paleomix/Alred_paper/4_ngsRelate/
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -o /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/4_ngsRelate_Alred.%j.out
#SBATCH -e /global/scratch/nwales/Sunflower_paleomix/Alred_paper/0_scripts/4_ngsRelate_Alred.%j.err
#SBATCH --mail-user=nathan.wales@berkeley.edu
#SBATCH --mail-type=All

Project_name="Alred_ngsRelate_angsd"
BAM_list="Bam_list_Alred_for_ngsRelate.txt"
BAM_list_path="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/2_bam_data/nuclear/"
angsd_file_path="/global/scratch/nwales/Sunflower_paleomix/Alred_paper/3_angsd/"

mkdir ${Project_name}
cd  ${Project_name}

cp ${BAM_list_path}/${BAM_list} .
sed -i 's/.XRQ_nuclear.realigned.bam//g' ${BAM_list}
sed -i 's/.*\///g' ${BAM_list}
number_of_samples=`wc -l < ${BAM_list}`

cp ${angsd_file_path}/${Project_name}.glf.gz .

### Using Wild MAF file 
cp ${angsd_file_path}/Wilds_angsd_Sariel.mafs.gz .
zcat Wilds_angsd_Sariel.mafs.gz | cut -f5 |sed 1d > ${Project_name}_from_Wild.freq

~/programs/ngsRelate/ngsRelate/ngsRelate -g ${Project_name}.glf.gz -n ${number_of_samples} -f ${Project_name}_from_Wild.freq  -O ngsRelate.${Project_name} -p  ${SLURM_CPUS_PER_TASK}

### Using Angsd run MAF file (probably not so reliable as it is biased)
cp ${angsd_file_path}/${Project_name}.mafs.gz .
zcat ${Project_name}.mafs.gz | cut -f5 |sed 1d > ${Project_name}.freq

~/programs/ngsRelate/ngsRelate/ngsRelate -g ${Project_name}.glf.gz -n ${number_of_samples} -f ${Project_name}.freq  -O ngsRelate.from_biased_MAF.${Project_name} -p  ${SLURM_CPUS_PER_TASK}


