local infinity_provider_chest = table.deepcopy(data.raw["logistic-container"]["passive-provider-chest"])
infinity_provider_chest.name = "infinity-provider-chest"
infinity_provider_chest.type = "infinity-container"
infinity_provider_chest.erase_contents_when_mined = true
infinity_provider_chest.preserve_contents_when_created = true

data:extend{
    infinity_provider_chest
}

data:extend{
    {
        type = "item",
        name = "infinity-provider-chest",
        icon = "__base__/graphics/icons/passive-provider-chest.png",
        icon_size = 64, icon_mipmaps = 1,
        stack_size = 25,
        place_result = "infinity-provider-chest"
    }
}
