if (mods["space-age"]) then
    data:extend {
        {
            type = "fluid",
            name = "molten-glass",
            icon = "__Compaction2__/graphics/fluid/molten-glass.png",
            subgroup = "fluid",
            order = "b[new-fluid]-b[vulcanus]-b[molten-copper]",
            default_temperature = 1100,
            max_temperature = 2000,
            heat_capacity = "0.01kJ",
            base_color = {0.53, 0.1, 0},
            flow_color = {0.93, 0.68, 0.2},
            auto_barrel = false
        },
    }
else
    -- do not add new fluid
end


