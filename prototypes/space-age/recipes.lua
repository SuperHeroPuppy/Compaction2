if (mods["space-age"]) then
  -- removes recipes if space age is enabled
else
    data:extend {
        {
            type = "recipe",
            name = "space-supplies-science",
            category = "advanced-crafting",
            enabled = false,
            energy_required = 1.0,
            crafting_speed = 0.5,
            ingredients = {
                { type = "item",  name = "carbon",     amount = 1 },
                { type = "item",  name = "iron-plate", amount = 10 },
                { type = "fluid", name = "water",      amount = 20 }
            },
            results = {
                { type = "item", name = "space-supplies-science", amount = 3 }
            },
            allow_productivity = true
        },
    }
end
