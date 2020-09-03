mkdir -p log

module purge
module load modules modules-init modules-gs/prod modules-eichler/prod bedtools/2.29.0 miniconda/4.5.12
module load bwa/0.7.17
module load samtools/1.9

snakemake -s align_illumina_against_reference.snake --drmaa " -w n -q eichler-short.q -l h_rt=24:00:00  -V -cwd -e ./log -o ./log {params.sge_opts}  -S /bin/bash" -w 100 --jobs 100 -p
