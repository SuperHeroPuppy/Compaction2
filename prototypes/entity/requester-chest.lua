local requester = table.deepcopy(data.raw["logistic-container"]["requester-chest"])
requester.name = "makeShift-requester-chest"
requester.inventory_size = 25
requester.max_health = 50
requester.minable ={
    result = "makeShift-requester-chest",
    mining_time = 0.1
}

-- Check if animation layers exist before attempting to index
if requester.animation and requester.animation.layers then
    local tint = { r = 0, g = 0, b = 1, a = 1 }
    requester.animation.layers[1].tint = tint
    if requester.animation.layers[1].hr_version then
        requester.animation.layers[1].hr_version.tint = tint
    end
end

data:extend{
    requester
}

data:extend{
    {
        type = "item",
        name = "makeShift-requester-chest",
        icon = "__Compaction2__/graphics/entity/chest2.png",
        icon_size = 64, icon_mipmaps = 1,
        subgroup = "logistic-network",
        order = "5",
        place_result = "makeShift-requester-chest",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "makeShift-requester-chest",
        category = "crafting",
        energy_required = 1.0,
        enabled = false,
        ingredients = {
            {type="item", name="iron-chest", amount=2},
            {type="item", name="copper-cable", amount=8},
            {type="item", name="basic-circuit", amount=5},
            {type="item", name="iron-stick", amount=2}
        },
        results = {
            
            {type="item", name="makeShift-requester-chest", amount=1}
        }
    }
}
