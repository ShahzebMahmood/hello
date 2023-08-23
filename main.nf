#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

process sayHello {
    cpus params.cpu - 5 // make cpu count 'dynamic' on the run
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}

workflow {
  Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}
