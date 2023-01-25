#!/bin/sh

#module load system/Miniconda3-4.7.10
module load bioinfo/Nextflow-v21.10.6
#module load bioinfo/PAINTOR_V3.0
module load system/singularity-3.7.3
#module load compiler/gcc-9.3.0

#export PATH=/work/project/fragencode/tools/multi/Scripts/:$PATH

nextflow run main.nf \
    -c nextflow.config,genologin.config \
    --gwasFile 'data/input/CAD_META' \
    --outputDir_locus 'data/output_locus' \
    -dsl2 \
    -profile slurm,singularity \
    -resume 
    