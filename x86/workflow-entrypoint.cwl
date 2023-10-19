cwlVersion: v1.0
class: Workflow
id: rquest-omop-worker_workflow
label: rquest-omop-worker-workflow

inputs:
    body:
        type: File
    result_modifiers:
        type: string?
    is_availability:
        type: boolean
    results:
        type: string?

outputs:
    output_file:
        type: File
        outputSource: run_query/output_file

steps:
    run_query:
        run: ./rquest-omop-worker.cwl
        in:
            body: body
            result_modifiers: result_modifiers
            is_availability: is_availability
            results: results
            
        out: [output_file]
