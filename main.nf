#!/usr/bin/env nextflow
nextflow.enable.dsl=2

process sayHello {

  script:
  """
  echo 'Hello, World!'
  """
}
process sayHello2 {

  script:
  """
  echo 'Hello, World 2!'
  """
}

workflow {
  sayHello()
  sayHello2()
}
