/*
 *  DAF pipeline
 *
 */

nextflow.enable.dsl=2
params.enable_conda = false
params.version = "v0.0.0-dev"

include { fastp_a_flash } from './workflows/fastpflash.nf'

workflow NF_test {
    fastp_a_flash ()
}

workflow {
    NF_test ()
}
