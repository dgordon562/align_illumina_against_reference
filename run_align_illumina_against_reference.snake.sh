mkdir -p log
source source_this_first.sh
snakemake -s align_illumina_against_reference.snake --jobname "{rulename}.{jobid}" --drmaa " -n w -V -cwd -e ./log -o ./log {params.sge_opts}  -S /bin/bash" -w 100 --jobs 100 -p -k
