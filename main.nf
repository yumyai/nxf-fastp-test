/*
 *  DAF pipeline
 *
 */

nextflow.enable.dsl=2
params.enable_conda = false
params.version = "v0.0.0-dev"

include { fastpflash } from './workflows/fastpflash.nf'

workflow NFCORE_TEST {
    fastpflash ()
}

workflow {
    NFCORE_TEST ()
}
