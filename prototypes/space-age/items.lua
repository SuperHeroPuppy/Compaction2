if (mods["space-age"]) then
    data:extend {
        {
            type = "tool",
            name = "specimin-science-pack",
            icon = "__Compaction2__/graphics/icons/science/specimin-science-pack.png",
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "nauvis-agriculture",
            order = "b",
            stack_size = 50,
            durability = 1,
            spoil_ticks = 0.5 * hour,
            spoil_to_trigger_result =
            {
                items_per_trigger = 25,
                trigger =
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "instant",
                        source_effects =
                        {
                            {
                                type = "create-entity",
                                entity_name = "big-biter",
                                affects_target = true,
                                show_in_tooltip = true,
                                as_enemy = true,
                                find_non_colliding_position = true,
                                abort_if_over_space = true,
                                offset_deviation = { { -1, -1 }, { 1, 1 } },
                                non_colliding_fail_result =
                                {
                                    type = "direct",
                                    action_delivery =
                                    {
                                        type = "instant",
                                        source_effects =
                                        {
                                            {
                                                type = "create-entity",
                                                entity_name = "big-biter",
                                                affects_target = true,
                                                show_in_tooltip = false,
                                                as_enemy = true,
                                                offset_deviation = { { -1, -1 }, { 1, 1 } },
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        },
        {
            type = "item",
            name = "biter-organs",
            icon = "__Compaction2__/graphics/icons/organs/biter-organs-1.png",
            pictures =
            {
                { size = 64, filename = "__Compaction2__/graphics/icons/organs/biter-organs-1.png", scale = 0.25, mipmap_count = 4 },
                { size = 64, filename = "__Compaction2__/graphics/icons/organs/biter-organs-2.png", scale = 0.25, mipmap_count = 4 },
                { size = 64, filename = "__Compaction2__/graphics/icons/organs/biter-organs-3.png", scale = 0.25, mipmap_count = 4 },
            },
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "agriculture-products",
            spoil_ticks = 5 * minute,
            spoil_result = "spoilage",
            stack_size = 60
        },
    }
else
    data:extend {
        {
            type = "item",
            name = "space-supplies-science",
            icon = "__Compaction2__/graphics/icons/science/space-supplies.png",
            icon_size = 64,
            subgroup = "space-material",
            order = "d",
            stack_size = 15,
            weight = 1 * tons,
            rocket_launch_products = { { type = "item", name = "space-science-pack", amount = 1000 } },
            send_to_orbit_mode = "automated"
        },
        {
            type = "item",
            name = "satellite",
            icon_size = 64,
            icon = "__base__/graphics/icons/satellite.png",
            subgroup = "space-material",
            order = "d[rocket-parts]-e[satellite]",
            stack_size = 1,
        },
        {
            type = "item",
            name = "biter-egg",
            icon = "__Compaction2__/graphics/icons/biter-egg/biter-egg.png",
            pictures =
            {
                { size = 64, filename = "__Compaction2__/graphics/icons/biter-egg/biter-egg-1.png", scale = 0.25, mipmap_count = 4 },
                { size = 64, filename = "__Compaction2__/graphics/icons/biter-egg/biter-egg-2.png", scale = 0.25, mipmap_count = 4 },
                { size = 64, filename = "__Compaction2__/graphics/icons/biter-egg/biter-egg-3.png", scale = 0.25, mipmap_count = 4 },
            },
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "agriculture-products",
            stack_size = 60
        },
        {
            type = "item",
            name = "tree-seed",
            icon = "__Compaction2__/graphics/icons/seeds/seeds-1.png",
            pictures =
            {
                { size = 64, filename = "__Compaction2__/graphics/icons/seeds/seeds-1.png", scale = 0.25, mipmap_count = 4 },
                { size = 64, filename = "__Compaction2__/graphics/icons/seeds/seeds-2.png", scale = 0.25, mipmap_count = 4 },
                { size = 64, filename = "__Compaction2__/graphics/icons/seeds/seeds-3.png", scale = 0.25, mipmap_count = 4 },
            },
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "nauvis-agriculture",
            stack_size = 100,
            fuel_value = "0.5MJ",
            fuel_category = "chemical"
        },
        {
            type = "tool",
            name = "specimin-science-pack",
            icon = "__Compaction2__/graphics/icons/science/specimin-science-pack.png",
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "nauvis-agriculture",
            order = "b",
            stack_size = 5,
            durability = 1,
        },
        {
            type = "item",
            name = "nutrients",
            icon = "__Compaction2__/graphics/icons/resource/nutrients.png",
            subgroup = "nauvis-agriculture",
            order = "c[nutrients]-b[nutrients]",
            fuel_value = "2MJ",
            fuel_category = "chemical",
            stack_size = 100,
            weight = 0.5 * kg
        },
        {
            type = "item",
            name = "biter-organs",
            icon = "__Compaction2__/graphics/icons/organs/biter-organs-1.png",
            pictures =
            {
                { size = 64, filename = "__Compaction2__/graphics/icons/organs/biter-organs-1.png", scale = 0.25, mipmap_count = 4 },
                { size = 64, filename = "__Compaction2__/graphics/icons/organs/biter-organs-2.png", scale = 0.25, mipmap_count = 4 },
                { size = 64, filename = "__Compaction2__/graphics/icons/organs/biter-organs-3.png", scale = 0.25, mipmap_count = 4 },
            },
            icon_size = 64, icon_mipmaps = 4,
            subgroup = "agriculture-products",
            stack_size = 60
        },
    }
end