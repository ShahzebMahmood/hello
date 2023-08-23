process hello {
    cpus params.cpu - 5 // make cpu count 'dynamic' on the run
    input:
        val my_var
    output:
        stdout
        val proc_var, emit: out_var
    debug true
    script:
        proc_var = "proc_var-${my_var}"
    """
    echo "Hello ${proc_var}"
    """
}

workflow {
    hello(params.myVar)
}
