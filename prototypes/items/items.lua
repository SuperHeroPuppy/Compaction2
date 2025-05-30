local item_sounds = require("__base__.prototypes.item_sounds")

data:extend {
    {
        type = "item",
        name = "smart-battery",
        icon = "__Compaction2__/graphics/icons/smart-battery.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "i[battery]",
        stack_size = 35
    },
    {
        type = "item",
        name = "flight-controller",
        icon = "__Compaction2__/graphics/icons/flight-controller.png",
        icon_size = 64, icon_mipmaps = 1,
        subgroup = "intermediate-product",
        order = "k",
        stack_size = 1
    },
    {
        type = "item",
        name = "wooden-chunk",
        icon = "__Compaction2__/graphics/icons/woodchunks/chunk-wood-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/woodchunks/chunk-wood-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/woodchunks/chunk-wood-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/woodchunks/chunk-wood-3.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-material",
        fuel_value = "1MJ",
        fuel_category = "chemical",
        order = "a",
        stack_size = 250
    },
    {
        type = "item",
        name = "crushed-stone",
        icon = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-stone-ore-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-stone-ore-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-stone-ore-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-stone-ore-3.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 1,
        subgroup = "shredder-subgroup",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "crushed-iron-ore",
        icon = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-iron-ore-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-iron-ore-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-iron-ore-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-iron-ore-3.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "shredder-subgroup",
        order = "d",
        stack_size = 100
    },
    {
        type = "item",
        name = "crushed-copper-ore",
        icon = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-copper-ore-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-copper-ore-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-copper-ore-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/crushed-ore/pile-dust-crushed-copper-ore-3.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 1,
        subgroup = "shredder-subgroup",
        order = "f",
        stack_size = 100
    },
    {
        type = "item",
        name = "gravel",
        icon = "__Compaction2__/graphics/icons/gravel.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "shredder-subgroup",
        order = "b",
        stack_size = 250
    },
    {
        type = "item",
        name = "sand",
        icon = "__Compaction2__/graphics/icons/sand.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "c",
        subgroup = "shredder-subgroup",
        stack_size = 250
    },
    {
        type = "item",
        name = "glass",
        icon = "__Compaction2__/graphics/icons/glass/part-glass-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/glass/part-glass-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/glass/part-glass-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/glass/part-glass-3.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/glass/part-glass-4.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/glass/part-glass-5.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/glass/part-glass-6.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-material",
        order = "c",
        stack_size = 250
    },
    {
        type = "item",
        name = "glass-tube",
        icon = "__Compaction2__/graphics/icons/glass/glass-tube.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "c",
        stack_size = 15
    },
    {
        type = "item",
        name = "glass-bottle",
        icon = "__Compaction2__/graphics/icons/glass/glass-bottle.png",
        icon_size = 1024, icon_mipmaps = 1,
        subgroup = "intermediate-product",
        order = "c",
        stack_size = 50
    },
    {
        type = "item",
        name = "carbon",
        icon = "__Compaction2__/graphics/icons/carbon.png",
        icon_size = 64, icon_mipmaps = 4,
        fuel_value = "20MJ",
        fuel_category = "chemical",
        subgroup = "intermediate-product",
        order = "a",
        stack_size = 150
    },
    {
        type = "item",
        name = "gunpowder",
        icon = "__Compaction2__/graphics/icons/gunpowder/gunpowder-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/gunpowder/gunpowder-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/gunpowder/gunpowder-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/gunpowder/gunpowder-3.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        stack_size = 150
    },
    {
        type = "item",
        name = "quartz",
        icon = "__Compaction2__/graphics/icons/quartz/quartz-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/quartz/quartz-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/quartz/quartz-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/quartz/quartz-3.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "item-growing",
        stack_size = 80
    },
    {
        type = "item",
        name = "solid-diploid-chloride",
        icon = "__Compaction2__/graphics/icons/solid-diploid-chloride.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "item-growing",
        stack_size = 100
    },
    {
        type = "item",
        name = "solid-sulfuric-diploid-chloride",
        icon = "__Compaction2__/graphics/icons/solid-sulfuric-diploid-chloride.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "item-growing",
        stack_size = 100
    },
    {
        type = "item",
        name = "azure-crystal",
        icon = "__Compaction2__/graphics/icons/azure-crystal/azure-crystal-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/azure-crystal/azure-crystal-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/azure-crystal/azure-crystal-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/azure-crystal/azure-crystal-3.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/azure-crystal/azure-crystal-4.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "item-growing",
        stack_size = 80
    },
    {
        type = "item",
        name = "pyrite-crystal",
        icon = "__Compaction2__/graphics/icons/pyrite-crystal/pyrite-crystal-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/pyrite-crystal/pyrite-crystal-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/pyrite-crystal/pyrite-crystal-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/pyrite-crystal/pyrite-crystal-3.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "item-growing",
        stack_size = 80
    },
    {
        type = "item",
        name = "fluorite-crystal",
        icon = "__Compaction2__/graphics/icons/fluorite-crystal/fluorite-crystal-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/fluorite-crystal/fluorite-crystal-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/fluorite-crystal/fluorite-crystal-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/fluorite-crystal/fluorite-crystal-3.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/fluorite-crystal/fluorite-crystal-4.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "item-growing",
        stack_size = 80
    },
    {
        type = "item",
        name = "material-blob",
        icon = "__Compaction2__/graphics/icons/material-blob/material-blob-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/material-blob/material-blob-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/material-blob/material-blob-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/material-blob/material-blob-3.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "item-growing",
        stack_size = 200
    },
    {
        type = "item",
        name = "nugget-metal",
        icon = "__Compaction2__/graphics/icons/metal-nugget.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-resource",
        stack_size = 500
    },
    {
        type = "item",
        name = "nugget-gold",
        icon = "__Compaction2__/graphics/icons/nugget-gold.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-resource",
        stack_size = 500
    },
    {
        type = "item",
        name = "gold-ingot",
        icon = "__Compaction2__/graphics/icons/gold-ingot.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-material",
        stack_size = 250
    },
    {
        type = "item",
        name = "gold-foil",
        icon = "__Compaction2__/graphics/icons/gold-foil.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-material",
        stack_size = 50
    },
    {
        type = "item",
        name = "iron-mesh",
        icon = "__Compaction2__/graphics/icons/iron-mesh.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        stack_size = 250
    },
    {
        type = "item",
        name = "gold-mesh",
        icon = "__Compaction2__/graphics/icons/gold-mesh.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        stack_size = 250
    },
    {
        type = "item",
        name = "silicon",
        icon = "__Compaction2__/graphics/icons/silicon/silicon-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/silicon/silicon-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/silicon/silicon-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/silicon/silicon-3.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "c",
        stack_size = 60
    },
    {
        type = "item",
        name = "carbon-fiber",
        icon = "__Compaction2__/graphics/icons/carbon-fiber.png",
        icon_size = 64, icon_mipmaps = 1,
        subgroup = "intermediate-product",
        order = "a",
        stack_size = 50
    },
    {
        type = "item",
        name = "rocket-casing",
        icon = "__Compaction2__/graphics/icons/rocket-casing.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ammo",
        order = "cd",
        stack_size = 50
    },
    {
        type = "item",
        name = "rocket-control-unit",
        icon = "__Compaction2__/graphics/icons/rocket-control-unit.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "space-material",
        order = "cd",
        stack_size = 10
    },
    {
        type = "tool",
        name = "flight-science-pack",
        icon = "__Compaction2__/graphics/icons/flight-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "c",
        stack_size = 200,
        durability = 1,
    },
    {
        type = "tool",
        name = "empty-science-pack",
        icon = "__Compaction2__/graphics/icons/empty-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "9",
        stack_size = 200,
        durability = 1,
    },
    {
        type = "item",
        name = "high-quality-iron-ore",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-resource",
        order = "z",
        stack_size = 50
    },
    {
        type = "item",
        name = "high-quality-copper-ore",
        icon = "__base__/graphics/icons/copper-ore.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-resource",
        order = "z",
        stack_size = 50
    },
    {
        type = "item",
        name = "bullets",
        icon = "__Compaction2__/graphics/icons/bullet-casings/part-bullets.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ammo",
        order = "b",
        stack_size = 50
    },
    {
        type = "item",
        name = "magazine",
        icon = "__Compaction2__/graphics/icons/bullet-casings/part-ammo-magazine.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ammo",
        order = "a",
        stack_size = 15
    },
    {
        type = "item",
        name = "bullet-casing",
        icon = "__Compaction2__/graphics/icons/bullet-casings/part-bullet-casings-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/bullet-casings/part-bullet-casings-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/bullet-casings/part-bullet-casings-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/bullet-casings/part-bullet-casings-3.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/bullet-casings/part-bullet-casings-4.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/bullet-casings/part-bullet-casings-5.png", scale = 0.25, mipmap_count = 4 }
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ammo",
        order = "a",
        stack_size = 80
    },
    {
        type = "item",
        name = "shotgun-hulls",
        icon = "__Compaction2__/graphics/icons/bullet-casings/part-ammo-shotgun-hulls-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/bullet-casings/part-ammo-shotgun-hulls-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/bullet-casings/part-ammo-shotgun-hulls-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/bullet-casings/part-ammo-shotgun-hulls-3.png", scale = 0.25, mipmap_count = 4 },
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "ammo",
        order = "a",
        stack_size = 80
    },
    {
        type = "item",
        name = "charcoal",
        icon = "__Compaction2__/graphics/icons/charcoal/charcoal-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/charcoal/charcoal-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/charcoal/charcoal-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/charcoal/charcoal-3.png", scale = 0.25, mipmap_count = 4 },
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-material",
        fuel_value = "0.5MJ",
        fuel_category = "chemical",
        order = "d",
        stack_size = 150
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
        subgroup = "organs",
        stack_size = 60
    },
    {
        type = "item",
        name = "tree-seeds",
        icon = "__Compaction2__/graphics/icons/seeds/seeds-1.png",
        pictures =
        {
            { size = 64, filename = "__Compaction2__/graphics/icons/seeds/seeds-1.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/seeds/seeds-2.png", scale = 0.25, mipmap_count = 4 },
            { size = 64, filename = "__Compaction2__/graphics/icons/seeds/seeds-3.png", scale = 0.25, mipmap_count = 4 },
        },
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "organs",
        stack_size = 100,
        fuel_value = "0.5MJ",
        fuel_category = "chemical"
    },
    {
        type = "item",
        name = "burner-lab",
        icon = "__Compaction2__/graphics/icons/burner-lab.png",
        icon_size = 64, icon_mipmaps = 1,
        flags = data.raw.item.lab.flags,
        subgroup = data.raw.item.lab.subgroup,
        order = data.raw.item.lab.order,
        stack_size = data.raw.item.lab.stack_size,
        place_result = "burner-lab",
    },
    {
        type = "ammo",
        name = "firearm-magazine",
        icon = "__base__/graphics/icons/firearm-magazine.png",
        ammo_category = "bullet",
        ammo_type =
        {
            action =
            {
                {
                    type = "direct",
                    action_delivery =
                    {
                        {
                            type = "instant",
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot"
                                }
                            },
                            target_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = "explosion-hit",
                                    offsets = { { 0, 1 } },
                                    offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } }
                                },
                                {
                                    type = "damage",
                                    damage = { amount = 5 * 2, type = "physical" }
                                },
                                {
                                    type = "activate-impact",
                                    deliver_category = "bullet"
                                }
                            }
                        }
                    }
                }
            }
        },
        magazine_size = 20,
        subgroup = "ammo",
        order = "a[basic-clips]-a[firearm-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 100,
        weight = 10 * kg
    },
    {
        type = "ammo",
        name = "iron-tip-magazine",
        icon = "__base__/graphics/icons/ammo-category/bullet.png",
        ammo_category = "bullet",
        ammo_type =
        {
            action =
            {
                {
                    type = "direct",
                    action_delivery =
                    {
                        {
                            type = "instant",
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot"
                                }
                            },
                            target_effects =
                            {
                                {
                                    type = "create-entity",
                                    entity_name = "explosion-hit",
                                    offsets = { { 0, 1 } },
                                    offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } }
                                },
                                {
                                    type = "damage",
                                    damage = { amount = 1, type = "physical" }
                                },
                                {
                                    type = "activate-impact",
                                    deliver_category = "bullet"
                                }
                            }
                        }
                    }
                }
            }
        },
        magazine_size = 5,
        subgroup = "ammo",
        order = "a[basic-clips]-a[firearm-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 5,
        weight = 3 * kg
    },
    {
        type = "ammo",
        name = "piercing-rounds-magazine",
        icon = "__base__/graphics/icons/piercing-rounds-magazine.png",
        ammo_category = "bullet",
        ammo_type =
        {
            action =
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    source_effects =
                    {
                        type = "create-explosion",
                        entity_name = "explosion-gunshot"
                    },
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit",
                            offsets = { { 0, 1 } },
                            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } }
                        },
                        {
                            type = "damage",
                            damage = { amount = 8 * 3, type = "physical" }
                        },
                        {
                            type = "activate-impact",
                            deliver_category = "bullet"
                        }
                    }
                }
            }
        },
        magazine_size = 30,
        subgroup = "ammo",
        order = "a[basic-clips]-b[piercing-rounds-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 100,
        weight = 20 * kg
    },
    {
        type = "ammo",
        name = "uranium-rounds-magazine",
        icon = "__base__/graphics/icons/uranium-rounds-magazine.png",
        pictures =
        {
            layers =
            {
                {
                    size = 64,
                    filename = "__base__/graphics/icons/uranium-rounds-magazine.png",
                    scale = 0.5,
                    mipmap_count = 4
                },
                {
                    draw_as_light = true,
                    size = 64,
                    filename = "__base__/graphics/icons/uranium-rounds-magazine-light.png",
                    scale = 0.5
                }
            }
        },
        ammo_category = "bullet",
        ammo_type =
        {
            action =
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    source_effects =
                    {
                        type = "create-explosion",
                        entity_name = "explosion-gunshot"
                    },
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit",
                            offsets = { { 0, 1 } },
                            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } }
                        },
                        {
                            type = "damage",
                            damage = { amount = 24 * 2, type = "physical" }
                        },
                        {
                            type = "activate-impact",
                            deliver_category = "bullet"
                        }
                    }
                }
            }
        },
        magazine_size = 10,
        subgroup = "ammo",
        order = "a[basic-clips]-c[uranium-rounds-magazine]",
        inventory_move_sound = item_sounds.ammo_small_inventory_move,
        pick_sound = item_sounds.ammo_small_inventory_pickup,
        drop_sound = item_sounds.ammo_small_inventory_move,
        stack_size = 100,
        weight = 40 * kg
    },
    {
        type = "item",
        name = "natter",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__Compaction2__/graphics/icons/matter.png",
        subgroup = "raw-material",
        order = "n",
        stack_size = 100,
    },
    {
        type = "tool",
        name = "wooden-tech-card",
        icon = "__Compaction2__/graphics/icons/wooden-tech-card.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "science-pack",
        order = "a",
        stack_size = 10,
        durability = 1,
    },
    {
        type = "item",
        name = "info",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/icons/info.png",
        stack_size = 100,
    },
}

if (mods["space-age"]) then
    -- removes items if space age is enabled
else
    data:extend {
        {
            type = "item",
            name = "space-supplies-science",
            icon = "__Compaction2__/graphics/icons/space-supplies.png",
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
            subgroup = "organs",
            stack_size = 60
        },
    }
end
