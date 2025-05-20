local Storage = table.deepcopy(data.raw["logistic-container"]["storage-chest"])
Storage.name = "makeShift-storage-chest"
Storage.minable.result = "makeShift-storage-chest"
Storage.inventory_size = 15
Storage.max_health = 30
Storage.minable ={
    result = "makeShift-storage-chest",
    mining_time = 0.1
}

local tint = { r = 1, g = 1, b = 0, a = 1 }
Storage.animation.layers[1].tint = tint

data:extend{
    Storage
}

data:extend{
    {
        type = "item",
        name = "makeShift-storage-chest",
        icon = "__Compaction2__/graphics/entity/chest.png",
        icon_size = 64, icon_mipmaps = 1,
        subgroup = "logistic-network",
        order = "5",
        place_result = "makeShift-storage-chest",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "makeShift-storage-chest",
        category = "crafting",
        energy_required = 1.0,
        enabled = false,
        ingredients = {
            {type="item", name="iron-chest", amount=2},
            {type="item", name="copper-cable", amount=5},
            {type="item", name="basic-circuit", amount=5}
        },
        results = {
            {type="item", name="makeShift-storage-chest", amount=1}}
    }
}