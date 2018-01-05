mkdir -p log
snakemake -s align_illumina_against_reference.snake --drmaa " -q eichler-short.q -l h_rt=24:00:00  -V -cwd -e ./log -o ./log {params.sge_opts}  -S /bin/bash" -w 100 --jobs 100 -p