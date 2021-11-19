```mermaid
%%{init: {
    "fontFamily": "Helvetica",
    "sequence": {
            "mirrorActors": false,

            "actorFontFamily": "Helvetica",
            "actorFontSize": 18,
            "actorFontWeight": "bold",
            "actorMargin": 150,

            "messageFontFamily": "Helvetica",
            "messageFontWeight": 200,
            "messageFontSize": 14,
            
            "activationWidth": 20,
            
            "width": 250,
            "height": 100,

            "rightAngles": true,

            "labelBoxWidth": 50,
            "labelBoxHeight": 30,
            "wrapPadding": 0
        }
    }
}%%
sequenceDiagram
    actor User
    participant App as Mobile Application
    participant API
    participant DB as Database

    User->>+App: Tap "Activity" button
    App->>+API: Fetch activity that the user is following
    API->>+DB: Get user's following list
    DB-->>-API: Return user's following list

    %% TODO: Think about activity feed compiliation algorithm
    
    API-->>-App: Return activity feed
    App-->>User: Show activity feed

    opt React on someone's activity
        User->>+App: React on activity
        App-->>User: Show user's reaction and update reaction count
        App->>+API: Update reaction list on the activity
        API->>+DB: Update reaction list
        DB-->>-API: Update completed
        API-->>-App: Update completed
        deactivate App
    end

    opt Comment on someone's activity
        User->>+App: Comment on activity and tap "Post" button
        App->>+API: Update comment list on the activity
        API->>+DB: Update comment list
        DB-->>-API: Update completed
        API-->>-App: Update completed
        App-->>User: Display user's comment
        deactivate App
    end

    User->>App: Test

    deactivate App
    

```