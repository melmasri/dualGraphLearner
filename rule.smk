
rule:
    name:
        module_name
    input:
        data=alg_input_data(),
    output:
        seqgraph=touch(alg_output_seqgraph_path(module_name)),
        time=touch(alg_output_time_path(module_name)),
        ntests=touch(alg_output_ntests_path(module_name))
    container:
        None
    script:
        "script.sh"
        "screening.R"

