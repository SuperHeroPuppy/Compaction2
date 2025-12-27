if (mods["space-age"]) then
    local seconds = 60
    local minutes = 60*seconds
    
    local tree_plant = util.table.deepcopy(data.raw["tree"]["tree-08"])
    tree_plant.type = "plant"
    tree_plant.name = "tree-plant"
    tree_plant.flags = plant_flags
    tree_plant.hidden_in_factoriopedia = false
    tree_plant.factoriopedia_alternative = nil
    tree_plant.map_color = {0.19, 0.39, 0.19, 0.40}
    tree_plant.agricultural_tower_tint =
    {
    primary = {r = 0.7, g =  1.0, b = 0.2,a =  1},
    secondary = {r = 0.561, g = 0.613, b = 0.308, a = 1.000}, -- #8f4f4eff
    }
    tree_plant.minable =
    {
    mining_particle = "wooden-particle",
    mining_time = 0.5,
    results = {{type = "item", name = "wood", amount = 4}, {type = "item", name = "tree-seed", amount = 2}},
    }
    tree_plant.variation_weights = { 1, 1, 1, 1, 1, 1, 1, 1, 0.3, 0.3, 0.0, 0.0}
    tree_plant.growth_ticks = 10 * minutes
    tree_plant.surface_conditions = { {property = "pressure", min = 1000, max = 1000}}  -- only Nauvis (doesn't work yet)
    tree_plant.autoplace =
    {
    probability_expression = 0,
    -- required to show agricultural tower plots
    tile_restriction =
    {
        "grass-1", "grass-2", "grass-3", "grass-4",
        "dry-dirt", "dirt-1", "dirt-2", "dirt-3", "dirt-4", "dirt-5", "dirt-6", "dirt-7",
        "red-desert-0", "red-desert-1", "red-desert-2", "red-desert-3"
    }
    }
    data:extend({tree_plant})  
end