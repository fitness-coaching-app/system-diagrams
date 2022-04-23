```mermaid
%%{init: {
    "fontFamily": "Helvetica"
}
}%%
classDiagram
    courses "1" -- "0..*" Rating
    courses "1" -- "1" Difficulty

    class courses{
        _id: objectId
        name: string
        description: string
        category: string
        bodyParts: string[]
        viewCount: int
        overallRating: double
        ratings: Rating[]
        difficulty: Difficulty
        coverPicture: string
        courseData: string
    }

    class Rating{
        userId: objectId
        rating: int
    }

    class Difficulty{
        <<enumeration>>
        EASY
        MEDIUM
        HARD
    }

 
```