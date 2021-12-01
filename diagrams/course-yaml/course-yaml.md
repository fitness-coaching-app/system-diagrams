```mermaid
%%{init: {
    "fontFamily": "Helvetica"
}
}%%

classDiagram
    class course{
        id: objectId
        name: string
        steps: ExerciseDefinition[]
    }

    course -- ExerciseDefinition
    ExerciseDefinition -- PoseStep

    class ExerciseDefinition{
        name: string
        media-dir: string
        bounce: string
        counting-rule: CountingRule
        count-on-id: string
        rest: boolean
        pose-steps: PoseSteps[]
    }

    class PoseStep{
        id: string
        definitions: string
    }




