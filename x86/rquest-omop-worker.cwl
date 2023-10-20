cwlVersion: v1.0
class: CommandLineTool
id: rquest-omop-worker
label: rquest-omop-worker

hints:
    DockerRequirement:
        dockerPull: hutchstack/rquest-omop-worker:next

baseCommand: [rquest-omop-worker]
inputs:
    body:
        type: File
        inputBinding:
            position: 1
            prefix: --body
    result_modifiers:
        type: string?
        inputBinding:
            position: 2
            prefix: -m
    is_availability:
        type: boolean
        inputBinding:
            position: 3
            prefix: -a
    results:
        type: string?
        inputBinding:
            position: 4
            prefix: -o

outputs:
    output_file:
        type: File
        outputBinding:
            glob: "output.json"
