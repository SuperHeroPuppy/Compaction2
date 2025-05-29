local triple_beacon = table.deepcopy(data.raw["beacon"]["beacon"])
triple_beacon.name = "triple-beacon"
triple_beacon.minable.result = "triple-beacon"
triple_beacon.module_slots = 6
triple_beacon.supply_area_distance = 6

data:extend{
    triple_beacon
}

data:extend{
    {
        type = "item",
        name = "triple-beacon",
        icon = "__base__/graphics/icons/beacon.png",
        icon_size = 64, icon_mipmaps = 1,
        subgroup = "logistic-network",
        order = "1",
        stack_size = 25,
        place_result = "triple-beacon"
    }
}
