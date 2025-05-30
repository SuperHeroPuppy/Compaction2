data:extend {
    {
        type = "recipe",
        name = "basic-circuit",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 1.0,
        ingredients = {
            { type = "item", name = "electronic-parts", amount = 1 },
            { type = "item", name = "iron-stick",       amount = 2 }
        },
        results = {
            { type = "item", name = "basic-circuit", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "smart-battery",
        category = "crafting",
        energy_required = 1.2,
        crafting_speed = 0.6,
        enabled = false,
        ingredients = {
            { type = "item", name = "battery",       amount = 1 },
            { type = "item", name = "basic-circuit", amount = 2 }
        },
        results = {
            { type = "item", name = "smart-battery", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "flight-controller",
        category = "advanced-crafting",
        enabled = false,
        energy_required = 4.2,
        crafting_speed = 2.6,
        ingredients = {
            { type = "item", name = "iron-plate",         amount = 1 },
            { type = "item", name = "electronic-circuit", amount = 5 },
            { type = "item", name = "iron-gear-wheel",    amount = 3 }
        },
        results = {
            { type = "item", name = "flight-controller", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "modular-assembler",
        category = "crafting",
        energy_required = 4.2,
        crafting_speed = 0.6,
        enabled = false,
        ingredients = {
            { type = "item", name = "iron-plate",         amount = 1 },
            { type = "item", name = "steel-plate",        amount = 3 },
            { type = "item", name = "electronic-circuit", amount = 2 },
            { type = "item", name = "iron-gear-wheel",    amount = 3 }
        },
        results = {
            { type = "item", name = "modular-assembler", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "shredder",
        category = "crafting",
        energy_required = 2.5,
        crafting_speed = 0.6,
        enabled = false,
        ingredients = {
            { type = "item", name = "steel-plate",        amount = 8 },
            { type = "item", name = "electronic-circuit", amount = 3 },
            { type = "item", name = "iron-gear-wheel",    amount = 6 }
        },
        results = {
            { type = "item", name = "shredder", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "wooden-chunk",
        category = "crafting",
        energy_required = 2.2,
        crafting_speed = 0.6,
        ingredients = {
            { type = "item", name = "wood", amount = 1 }
        },
        results = {
            { type = "item", name = "wooden-chunk", amount = 5 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "silicon",
        category = "smelting",
        crafting_speed = 0.7,
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "quartz", amount = 10 },
            { type = "item", name = "carbon", amount = 5 },
            { type = "item", name = "gravel", amount = 5 }
        },
        results = {
            { type = "item", name = "silicon", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "carbon",
        category = "crafting",
        crafting_speed = 0.6,
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "coal", amount = 5 }
        },
        results = {
            { type = "item", name = "carbon", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "carbon-fiber",
        category = "crafting",
        crafting_speed = 0.6,
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "carbon", amount = 5 }
        },
        results = {
            { type = "item", name = "carbon-fiber", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "crushed-stone",
        category = "shredder-crafting",
        crafting_speed = 0.1,
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "stone", amount = 1 }
        },
        results = {
            { type = "item", name = "crushed-stone", amount = 3 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "crushed-iron-ore",
        category = "shredder-crafting",
        crafting_speed = 0.6,
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "iron-ore", amount = 1 }
        },
        results = {
            { type = "item", name = "crushed-iron-ore", amount = 5 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "crushed-copper-ore",
        category = "shredder-crafting",
        crafting_speed = 0.6,
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "copper-ore", amount = 1 }
        },
        results = {
            { type = "item", name = "crushed-copper-ore", amount = 5 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "gravel",
        category = "shredder-crafting",
        crafting_speed = 0.4,
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "crushed-stone", amount = 1 }
        },
        results = {
            { type = "item", name = "gravel", amount = 5 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "gunpowder",
        category = "crafting",
        crafting_speed = 0.4,
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "carbon",   amount = 1 },
            { type = "item", name = "sulfur",   amount = 1 },
            { type = "item", name = "charcoal", amount = 1 }
        },
        results = {
            { type = "item", name = "gunpowder", amount = 5 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "sand",
        category = "shredder-crafting",
        crafting_speed = 0.3,
        energy_required = 1.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "gravel", amount = 1 }
        },
        results = {
            { type = "item", name = "sand", amount = 2 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "charcoal",
        category = "smelting",
        crafting_speed = 0.6,
        energy_required = 1.6,
        enabled = false,
        ingredients = { { type = "item", name = "wood", amount = 1 } },
        results = { { type = "item", name = "charcoal", amount = 2 } },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "glass",
        category = "smelting",
        crafting_speed = 0.6,
        energy_required = 1.6,
        enabled = false,
        ingredients = { { type = "item", name = "sand", amount = 1 } },
        results = { { type = "item", name = "glass", amount = 2 } },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "glass-tube",
        category = "smelting",
        crafting_speed = 0.6,
        energy_required = 1.6,
        enabled = false,
        ingredients = { { type = "item", name = "glass", amount = 2 } },
        results = { { type = "item", name = "glass-tube", amount = 1 } },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "glass-bottle",
        category = "smelting",
        crafting_speed = 0.6,
        energy_required = 1.6,
        enabled = false,
        ingredients = { { type = "item", name = "glass", amount = 5 } },
        results = { { type = "item", name = "glass-bottle", amount = 1 } },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "mini-robot",
        category = "crafting",
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "iron-plate",        amount = 1 },
            { type = "item", name = "basic-circuit",     amount = 2 },
            { type = "item", name = "iron-gear-wheel",   amount = 3 },
            { type = "item", name = "flight-controller", amount = 1 }
        },
        results = {
            { type = "item", name = "mini-robot", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "mini-logistic-robot",
        category = "crafting",
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "iron-plate",        amount = 5 },
            { type = "item", name = "basic-circuit",     amount = 4 },
            { type = "item", name = "iron-gear-wheel",   amount = 2 },
            { type = "item", name = "flight-controller", amount = 1 }
        },
        results = {
            { type = "item", name = "mini-logistic-robot", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "flight-science-pack",
        category = "crafting",
        energy_required = 5.0,
        enabled = false,
        ingredients = {
            { type = "item", name = "steel-plate",        amount = 2 },
            { type = "item", name = "electronic-circuit", amount = 5 },
            { type = "item", name = "empty-science-pack", amount = 1 }
        },
        results = {
            { type = "item", name = "flight-science-pack", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "mini-roboport",
        category = "crafting",
        energy_required = 5.0,
        enabled = false,
        ingredients = {
            { type = "item", name = "steel-plate",        amount = 1 },
            { type = "item", name = "iron-gear-wheel",    amount = 3 },
            { type = "item", name = "electronic-circuit", amount = 3 },
            { type = "item", name = "copper-cable",       amount = 2 }
        },
        results = {
            { type = "item", name = "mini-roboport", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "rocket-casing",
        category = "advanced-crafting",
        energy_required = 5.2,
        crafting_speed = 2.8,
        enabled = false,
        ingredients = {
            { type = "item", name = "steel-plate",     amount = 1 },
            { type = "item", name = "iron-gear-wheel", amount = 3 },
            { type = "item", name = "copper-cable",    amount = 2 }
        },
        results = {
            { type = "item", name = "rocket-casing", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "aquaelixir",
        main_product = "aquaelixir",
        category = "chemistry",
        energy_required = 4.4,
        enabled = false,
        ingredients = {
            { type = "item",  name = "sulfur",      amount = 1 },
            { type = "item",  name = "steel-plate", amount = 1 },
            { type = "fluid", name = "water",       amount = 25 }
        },
        results = {
            { type = "fluid", name = "aquaelixir",  amount = 25 },
            { type = "item",  name = "steel-scrap", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "filtered-water",
        main_product = "water",
        category = "chemistry",
        subgroup = "fluid-recipes",
        order = "z",
        energy_required = 4.4,
        enabled = false,
        ingredients = {
            { type = "item",  name = "clean-filter", amount = 1 },
            { type = "fluid", name = "dirty-water",  amount = 200 }
        },
        results = {
            { type = "fluid", name = "water",        amount = 125 },
            { type = "item",  name = "dirty-filter", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "dirty-water",
        main_product = "dirty-water",
        category = "chemistry",
        subgroup = "fluid-recipes",
        order = "z",
        energy_required = 4.4,
        enabled = false,
        ingredients = {
            { type = "item",  name = "dirty-filter", amount = 1 },
            { type = "fluid", name = "water",        amount = 125 }
        },
        results = {
            { type = "fluid", name = "dirty-water",  amount = 200 },
            { type = "item",  name = "clean-filter", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "diploid-chloride",
        main_product = "diploid-chloride",
        category = "chemistry",
        subgroup = "fluid-recipes",
        order = "z",
        energy_required = 6.4,
        enabled = false,
        ingredients = {
            { type = "item", name = "solid-diploid-chloride", amount = 1 }
        },
        results = {
            { type = "fluid", name = "diploid-chloride", amount = 200 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "sulfuric-diploid-chloride",
        main_product = "sulfuric-diploid-chloride",
        category = "chemistry",
        subgroup = "fluid-recipes",
        order = "z",
        energy_required = 6.4,
        enabled = false,
        ingredients = {
            { type = "fluid", name = "diploid-chloride", amount = 300 },
            { type = "fluid", name = "sulfuric-acid",    amount = 10 }
        },
        results = {
            { type = "fluid", name = "sulfuric-diploid-chloride", amount = 200 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "solid-sulfuric-diploid-chloride",
        main_product = "solid-sulfuric-diploid-chloride",
        category = "chemistry",
        subgroup = "fluid-recipes",
        order = "z",
        energy_required = 6.4,
        enabled = false,
        ingredients = {
            { type = "fluid", name = "sulfuric-diploid-chloride", amount = 300 },
            { type = "fluid", name = "water",                     amount = 10 }
        },
        results = {
            { type = "item", name = "solid-sulfuric-diploid-chloride", amount = 20 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "empty-science-pack",
        category = "crafting",
        enabled = false,
        energy_required = 0.3,
        ingredients = {
            { type = "item", name = "iron-plate",      amount = 1 },
            { type = "item", name = "iron-gear-wheel", amount = 2 }
        },
        results = {
            { type = "item", name = "empty-science-pack", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "high-quality-iron-ore",
        category = "advanced-crafting",
        crafting_speed = 0.6,
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "crushed-iron-ore", amount = 15 }
        },
        results = {
            { type = "item", name = "high-quality-iron-ore", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "high-quality-copper-ore",
        category = "advanced-crafting",
        crafting_speed = 0.6,
        energy_required = 3.2,
        enabled = false,
        ingredients = {
            { type = "item", name = "crushed-copper-ore", amount = 15 }
        },
        results = {
            { type = "item", name = "high-quality-copper-ore", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "high-quality-iron-ore-smelting",
        category = "smelting",
        crafting_speed = 2.1,
        energy_required = 4.1,
        enabled = false,
        ingredients = {
            { type = "item", name = "high-quality-iron-ore", amount = 1 }
        },
        results = {
            { type = "item", name = "iron-plate", amount = 5 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "high-quality-copper-ore-smelting",
        category = "smelting",
        crafting_speed = 2.1,
        energy_required = 4.1,
        enabled = false,
        ingredients = {
            { type = "item", name = "high-quality-copper-ore", amount = 1 }
        },
        results = {
            { type = "item", name = "copper-plate", amount = 5 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "electronic-parts",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate",   amount = 1 },
            { type = "item", name = "copper-cable", amount = 2 }
        },
        results = {
            { type = "item", name = "electronic-parts", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "wooden-electronic-board",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "wood",         amount = 1 },
            { type = "item", name = "copper-cable", amount = 2 }
        },
        results = {
            { type = "item", name = "wooden-electronic-board", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "metal-bearing",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate",      amount = 1 },
            { type = "item", name = "iron-gear-wheel", amount = 2 }
        },
        results = {
            { type = "item", name = "metal-bearing", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "ribbon-cable",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "copper-cable", amount = 3 },
        },
        results = {
            { type = "item", name = "ribbon-cable", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "ai-core",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "ribbon-cable", amount = 3 },
            { type = "item", name = "raw-fish",     amount = 1 },
            { type = "item", name = "iron-plate",   amount = 2 },
            { type = "item", name = "copper-plate", amount = 4 }
        },
        results = {
            { type = "item", name = "ai-core", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "electronic-memory-chip",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "copper-cable",         amount = 5 },
            { type = "item", name = "electronic-microchip", amount = 1 }
        },
        results = {
            { type = "item", name = "electronic-memory-chip", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "electronic-microchip",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "copper-cable", amount = 3 },
            { type = "item", name = "iron-plate",   amount = 2 },
            { type = "item", name = "copper-plate", amount = 1 }
        },
        results = {
            { type = "item", name = "electronic-microchip", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "advanced-electronic-microchip",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate",           amount = 1 },
            { type = "item", name = "electronic-microchip", amount = 2 },
            { type = "item", name = "gold-mesh",            amount = 2 },
            { type = "item", name = "silicon",              amount = 5 }
        },
        results = {
            { type = "item", name = "advanced-electronic-microchip", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "electronic-storage",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "copper-cable",                  amount = 6 },
            { type = "item", name = "advanced-electronic-microchip", amount = 1 },
            { type = "item", name = "copper-plate",                  amount = 5 }
        },
        results = {
            { type = "item", name = "electronic-storage", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "clean-filter",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate",   amount = 2 },
            { type = "item", name = "copper-cable", amount = 6 }
        },
        results = {
            { type = "item", name = "clean-filter", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "photovoltaic",
        category = "chemistry",
        energy_required = 4.4,
        enabled = false,
        ingredients = {
            { type = "item",  name = "glass",              amount = 3 },
            { type = "item",  name = "iron-plate",         amount = 3 },
            { type = "item",  name = "electronic-circuit", amount = 15 },
            { type = "fluid", name = "aquaelixir",         amount = 25 }
        },
        results = {
            { type = "item", name = "photovoltaic", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "bullets",
        category = "advanced-crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate",    amount = 3 },
            { type = "item", name = "gunpowder",     amount = 3 },
            { type = "item", name = "bullet-casing", amount = 1 }
        },
        results = {
            { type = "item", name = "bullets", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "bullet-casing",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate",   amount = 1 },
            { type = "item", name = "copper-plate", amount = 2 }
        },
        results = {
            { type = "item", name = "bullet-casing", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "shotgun-hulls",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate",   amount = 1 },
            { type = "item", name = "copper-plate", amount = 2 }
        },
        results = {
            { type = "item", name = "shotgun-hulls", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "magazine",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate",   amount = 3 },
            { type = "item", name = "copper-plate", amount = 4 }
        },
        results = {
            { type = "item", name = "magazine", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "iron-tip-magazine",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate",   amount = 2 },
            { type = "item", name = "copper-plate", amount = 1 }
        },
        results = {
            { type = "item", name = "iron-tip-magazine", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "burner-lab",
        category = "crafting",
        enabled = true,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate",   amount = 3 },
            { type = "item", name = "copper-plate", amount = 2 },
            { type = "item", name = "stone-brick",  amount = 10 }
        },
        results = {
            { type = "item", name = "burner-lab", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "biological-lab",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "concrete",           amount = 5 },
            { type = "item", name = "steel-plate",        amount = 10 },
            { type = "item", name = "small-lamp",         amount = 1 },
            { type = "item", name = "iron-gear-wheel",    amount = 2 },
            { type = "item", name = "electronic-circuit", amount = 3 },
            { type = "item", name = "biter-organs",       amount = 6 }
        },
        results = {
            { type = "item", name = "biological-lab", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "processing-fusion-reactor",
        category = "complex-crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "natter", amount = 100 }
        },
        results = {
            { type = "item", name = "processing-fusion-reactor", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "crystal-processing-1",
        icon = "__Compaction2__/graphics/research/crystal-2.png",
        icon_size = 1024,
        category = "centrifuging",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "azure-crystal",                   amount = 1 },
            { type = "item", name = "solid-sulfuric-diploid-chloride", amount = 5 }
        },
        results = {
            {
                type = "item",
                name = "quartz",
                amount = 2,
                probability = 0.4
            }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "crystal-processing-2",
        icon = "__Compaction2__/graphics/research/crystal-1.png",
        icon_size = 1024,
        category = "centrifuging",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "fluorite-crystal",                amount = 1 },
            { type = "item", name = "solid-sulfuric-diploid-chloride", amount = 5 }
        },
        results = {
            {
                type = "item",
                name = "quartz",
                amount = 5,
                probability = 0.2
            }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "crystal-processing-3",
        icon = "__Compaction2__/graphics/research/crystal-3.png",
        icon_size = 1024,
        category = "centrifuging",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "pyrite-crystal",                  amount = 1 },
            { type = "item", name = "solid-sulfuric-diploid-chloride", amount = 5 }
        },
        results = {
            {
                type = "item",
                name = "quartz",
                amount = 1,
                probability = 0.8
            }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "nugget-processing",
        category = "shredder-crafting",
        main_product = "nugget-metal",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "material-blob", amount = 1 }
        },
        results = {
            {
                type = "item",
                name = "nugget-gold",
                amount = 5,
                probability = 0.1
            },
            {
                type = "item",
                name = "nugget-metal",
                amount = 10,
                probability = 0.2
            }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "gold-ingot",
        category = "smelting",
        crafting_speed = 2.1,
        energy_required = 4.1,
        enabled = false,
        ingredients = {
            { type = "item", name = "nugget-gold", amount = 5 }
        },
        results = {
            { type = "item", name = "gold-ingot", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "gold-foil",
        category = "advanced-crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "gold-ingot", amount = 1 }
        },
        results = {
            { type = "item", name = "gold-foil", amount = 5 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "iron-mesh",
        category = "crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate", amount = 4 }
        },
        results = {
            { type = "item", name = "iron-mesh", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "gold-mesh",
        category = "advanced-crafting",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "gold-foil", amount = 2 },
            { type = "item", name = "iron-mesh", amount = 2 }
        },
        results = {
            { type = "item", name = "gold-mesh", amount = 1 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "nugget-processing-1",
        category = "shredder-crafting",
        main_product = "iron-ore",
        enabled = false,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "nugget-metal", amount = 1 }
        },
        results = {
            {
                type = "item",
                name = "nugget-gold",
                amount = 1,
                probability = 0.1
            },
            {
                type = "item",
                name = "iron-ore",
                amount = 10,
                probability = 0.7
            },
            {
                type = "item",
                name = "copper-ore",
                amount = 10,
                probability = 0.7
            }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "plated-chest",
        category = "crafting",
        enabled = true,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "wooden-chest", amount = 1 },
            { type = "item", name = "iron-plate",   amount = 2 }
        },
        results = {
            { type = "item", name = "iron-chest", amount = 1 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "iron-tip-magazine",
        category = "advanced-crafting",
        enabled = true,
        energy_required = 1.0,
        crafting_speed = 0.5,
        ingredients = {
            { type = "item", name = "iron-plate", amount = 10 },
        },
        results = {
            { type = "item", name = "iron-tip-magazine", amount = 3 }
        },
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "iron-natter-recreation",
        category = "complex-fusion",
        enabled = true,
        energy_required = 100.0,
        crafting_speed = 5,
        ingredients = {
            { type = "item", name = "natter",     amount = 100 },
            { type = "item", name = "iron-plate", amount = 100 },
        },
        results = {
            { type = "item", name = "iron-plate", amount = 101 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "copper-natter-recreation",
        category = "complex-fusion",
        enabled = true,
        energy_required = 100.0,
        crafting_speed = 5,
        ingredients = {
            { type = "item", name = "natter",       amount = 100 },
            { type = "item", name = "copper-plate", amount = 100 },
        },
        results = {
            { type = "item", name = "copper-plate", amount = 101 }
        },
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "rocket-control-unit",
        category = "advanced-crafting",
        energy_required = 5.2,
        crafting_speed = 2.8,
        enabled = false,
        ingredients = {
            { type = "item", name = "processing-unit",    amount = 1 },
            { type = "item", name = "iron-plate",         amount = 5 },
            { type = "item", name = "electronic-circuit", amount = 2 },
        },
        results = {
            { type = "item", name = "rocket-control-unit", amount = 1 }
        },
        allow_productivity = true
    }
}


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
