
process PREPPAINTOR_splitlocus {
    publishDir '.', mode: 'copy'

    input:
        path gwasFile

    output:
        path "$params.outputDir_locus/*"

    script:
    """
        mkdir -p ${params.outputDir_locus}
        main.py \\
        -d $gwasFile  \\
        --separator '\t' \\
        --chromosome 'CHR' \\
        --od ${params.outputDir_locus}
    """
}
