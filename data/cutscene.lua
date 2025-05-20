local cutscene = {
    type = "cutscene",
    name = "custom-cutscene",
    duration = 15, -- increased duration for a more detailed cutscene
    steps = {
        {
            type = "camera",
            position = {x = 0, y = 0},
            zoom = 1,
            duration = 5,
            transition_duration = 1,
        },
        {
            type = "text",
            text = "Welcome to the world of Factorio!",
            duration = 4, -- extended duration for better readability
            position = {x = 0, y = 0},
            transition_duration = 1,
        },
        {
            type = "camera",
            position = {x = 5, y = 5},
            zoom = 1.5, -- zoom in for a closer view
            duration = 5,
            transition_duration = 1,
        },
        {
            type = "entity",
            entity = "player",
            position = {x = 10, y = 10},
            duration = 3,
            transition_duration = 1,
        },
        {
            type = "text",
            text = "Get ready to build and explore!",
            duration = 4, -- new text step to enhance the narrative
            position = {x = 0, y = 0},
            transition_duration = 1,
        },
        {
            type = "camera",
            position = {x = 15, y = 15},
            zoom = 0.5,
            duration = 5,
            transition_duration = 1,
        },
        {
            type = "custom-input",
            input = "start-game",
            duration = 5, -- duration for the input step
            transition_duration = 1,
        },
    }
}

data:extend({cutscene})