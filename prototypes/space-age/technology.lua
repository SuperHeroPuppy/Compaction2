if (mods["space-age"]) then
    data:extend({
        {
            type = "technology",
            name = "rocket-control-unit",
            icon = "__Compaction2__/graphics/research/rocket-control-unit.png",
            localised_description = "Archived, I'm Back.",
            icon_size = 256,
            effects = {
                { type = "unlock-recipe", recipe = "rocket-control-unit" },
            },
            prerequisites = {
                "flight-science-pack-tech",
                "processing-unit"
            },
            unit =
            {
                count = 300,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "chemical-science-pack",   1 },
                    { "logistic-science-pack",   1 },
                },
                time = 45
            },
        },
    })
else
    data:extend({
        {
            type = "technology",
            name = "rocket-control-unit",
            icon = "__Compaction2__/graphics/research/rocket-control-unit.png",
            localised_description = "Archived, I'm Back.",
            icon_size = 256,
            effects = {
                { type = "unlock-recipe", recipe = "rocket-control-unit" },
            },
            prerequisites = {
                "utility-science-pack",
                "flight-science-pack-tech",
                "processing-unit"
            },
            unit =
            {
                count = 300,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "chemical-science-pack",   1 },
                    { "logistic-science-pack",   1 },
                    { "utility-science-pack",    1 },
                },
                time = 45
            },
        },
        {
            type = "technology",
            name = "space-science-pack",
            icon = "__base__/graphics/technology/space-science-pack.png",
            icon_size = 256,
            essential = true,
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "space-supplies-science"
                },
            },
            research_trigger =
            {
                type = "send-item-to-orbit",
                item = "satellite"
            },
            prerequisites = { "rocket-silo" }
        },
    })
end