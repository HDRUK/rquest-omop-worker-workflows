# rquest-omop-worker-workflows

Source for workflow definitions for the open source RQuest OMOP Worker tool developed for Hutch/TRE-FX

Note: ARM workflows are currently broken. x86 ones work.

## Inputs

### Body
Sample input payload:

```json
{
  "task_id": "job-2023-01-13-14: 20: 38-<project>",
  "project": "<project>",
  "owner": "<owner>",
  "cohort": {
    "groups": [
      {
        "rules": [
          {
            "varname": "OMOP",
            "varcat": "Person",
            "type": "TEXT",
            "oper": "=",
            "value": "8507"
          }
        ],
        "rules_oper": "AND"
      }
    ],
    "groups_oper": "OR"
  },
  "collection": "<collection>",
  "protocol_version": "<version>",
  "char_salt": "<char_salt>",
  "uuid": "<uuid>"
}
```

### Database access

Currently this workflow requires inputs for connecting to the database it will run queries against.

In future this may be moved to environment variables.