#!/usr/bin/env nextflow
nextflow.enable.dsl=2

process sayHello {

  script:
  """
  echo 'Hello, World!'
  """

process sayGoodbye {
  input: 
    val y
  output:
    stdout
  script:
    """
    echo 'Goodbye, $y!'
    """
}

workflow {
  sayHello()
  sayGoodbye()

}
