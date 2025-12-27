local tier = 1

data.raw.technology["sulfur-processing"] = nil
data.raw.technology["military"] = nil
data.raw.technology["uranium-mining"] = nil
data.raw.technology["electronics"] = nil
data.raw.technology["automation"] = nil

data:extend({
    {
        type = "technology",
        name = "smart-battery-tech",
        icon = "__Compaction2__/graphics/research/battery.png",
        localised_description = "Unlock the Smarter Battery that should control the amount of energy released from it.",
        icon_size = 256,
        effects = {
            { type = "unlock-recipe", recipe = "smart-battery" }
        },
        prerequisites = { "battery" },
        unit =
        {
            count = 100,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 30
        },
    },
    {
        type = "technology",
        name = "flight-science-pack-tech",
        icon = "__Compaction2__/graphics/icons/science/flight-science-pack.png",
        localised_description = "Unlock the Special science to learn how to Fly!",
        icon_size = 64,
        effects = {
            { type = "unlock-recipe", recipe = "flight-science-pack" }
        },
        prerequisites = {
            "steel-processing",
            "logistic-science-pack"
        },
        unit =
        {
            count = 50,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 15
        },
    },
    {
        type = "technology",
        name = "flight-controller-tech",
        icon = "__Compaction2__/graphics/icons/intermediate/flight-controller.png",
        localised_description = "Unlock the Flight Controller to control flying Objects.",
        icon_size = 64,
        effects = {
            { type = "unlock-recipe", recipe = "flight-controller" }
        },
        prerequisites = {
            "flight-science-pack-tech",
            "automation"
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "flight-science-pack",     1 },
            },
            time = 15
        },
    },
    {
        type = "technology",
        name = "mini-robot-tech",
        icon = "__Compaction2__/graphics/entity/icons/mini-robot.png",
        localised_description = "They're Construction Bots but smaller?",
        icon_size = 64,
        effects = {
            { type = "unlock-recipe", recipe = "mini-robot" }
        },
        prerequisites = { "mini-roboport-tech" },
        unit =
        {
            count = 100,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "flight-science-pack",     1 },
            },
            time = 25
        },
    },
    {
        type = "technology",
        name = "mini-logistic-robot-tech",
        icon = "__Compaction2__/graphics/entity/icons/mini-logistic-robot.png",
        localised_description = "they're logistic Bots but smaller?",
        icon_size = 64,
        effects = {
            { type = "unlock-recipe", recipe = "mini-logistic-robot" }
        },
        prerequisites = { "mini-roboport-tech" },
        unit =
        {
            count = 100,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "flight-science-pack",     1 },
            },
            time = 25
        },
    },
    {
        type = "technology",
        name = "mini-roboport-tech",
        icon = "__Compaction2__/graphics/entity/icons/mini-roboport.png",
        localised_description = "they're Roboports but smaller?",
        icon_size = 64,
        effects = {
            { type = "unlock-recipe", recipe = "mini-roboport" },
            { type = "unlock-recipe", recipe = "makeShift-storage-chest" },
            { type = "unlock-recipe", recipe = "makeShift-requester-chest" }
        },
        prerequisites = {
            "flight-controller-tech",
            "steel-processing"
        },

        unit =
        {
            count = 100,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "flight-science-pack",     1 },
            },
            time = 25
        },
    },
    {
        type = "technology",
        name = "modular-assembler-tech",
        icon = "__Compaction2__/graphics/research/modular-assembler-tech.png",
        localised_description = "Unlock the Special Assembler used for Crafting Special stuff from the mod.",
        icon_size = 640,
        effects = {
            { type = "unlock-recipe", recipe = "modular-assembler" },
        },
        prerequisites = {
            "automation",
            "steel-processing"
        },
        unit =
        {
            count = 25,
            ingredients =
            {
                { "automation-science-pack", 1 },
            },
            time = 15
        },
    },
    {
        type = "technology",
        name = "aquaelixir-tech",
        icon = "__Compaction2__/graphics/research/AquaElixir.png",
        localised_description = "Some weird liquid that can be used for Solar Panels?",
        icon_size = 256,
        effects = {
            { type = "unlock-recipe", recipe = "aquaelixir" }
        },
        prerequisites = {
            "sulfur-processing",
            "steel-processing"
        },

        unit =
        {
            count = 100,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 25
        },
    },
    {
        type = "technology",
        name = "world-processing-tech",
        icon = "__Compaction2__/graphics/research/World-Processing.png",
        localised_description = "World Processing is kind of self-explanatory.",
        icon_size = 64,
        effects = {
            { type = "unlock-recipe", recipe = "crushed-stone" },
            { type = "unlock-recipe", recipe = "gravel" },
            { type = "unlock-recipe", recipe = "sand" },
            { type = "unlock-recipe", recipe = "charcoal" }
        },
        prerequisites = {
            "shredder-tech",
        },
        unit =
        {
            count = 10,
            ingredients =
            {
                { "automation-science-pack", 1 },
            },
            time = 5
        },
    },
    {
        type = "technology",
        name = "scrap-reforging-tech",
        icon = "__Compaction2__/graphics/research/Scrap-Salvaging.png",
        localised_description =
        "Unlock this technology that allows you to unlock other technology that allows you to Reforging Scrap",
        icon_size = 1024,
        effects = {
            { type = "unlock-recipe", recipe = "pistol-scrap" },
            { type = "unlock-recipe", recipe = "scrap-recycling-1" },
            { type = "unlock-recipe", recipe = "scrap-recycling-2" },
            { type = "unlock-recipe", recipe = "scrap-recycling-3" },
            { type = "unlock-recipe", recipe = "scrap-recycling-4" },
            { type = "unlock-recipe", recipe = "scrap-recycling-5" }
        },
        prerequisites = {
            "logistic-science-pack",
            "steel-processing",
            "shredder-tech",
            "automation",
        },

        unit =
        {
            count = 100,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 25
        },
    },
    {
        type = "technology",
        name = "rocket-casing-tech",
        icon = "__Compaction2__/graphics/icons/intermediate/rocket-casing.png",
        localised_description = "It's a rocket casing what do you do think it was?",
        icon_size = 64,
        effects = {
            { type = "unlock-recipe", recipe = "rocket-casing" }
        },
        prerequisites = {
            "logistic-science-pack",
            "steel-processing",
            "automation-2",
            "military-science-pack",

        },

        unit =
        {
            count = 200,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "military-science-pack",   1 },
            },
            time = 25
        },
    },
    {
        type = "technology",
        name = "shredder-tech",
        icon = "__Compaction2__/graphics/research/shredder-tech.png",
        localised_description = "Unlocking a large thing that likes to shred things!",
        icon_size = 256,
        effects = {
            { type = "unlock-recipe", recipe = "shredder" },
        },
        prerequisites = {
            "automation",
            "steel-processing",
            "electronics",
        },
        unit =
        {
            count = 25,
            ingredients =
            {
                { "automation-science-pack", 1 },
            },
            time = 15
        },
    },
    {
        type = "technology",
        name = "carbon-processing-tech",
        icon = "__Compaction2__/graphics/research/carbon.png",
        localised_description = "Carbon! There's carbon now! Biscuits this is added in Space Age lol.",
        icon_size = 256,
        effects = {
            { type = "unlock-recipe", recipe = "carbon" },
            { type = "unlock-recipe", recipe = "carbon-fiber" },
            { type = "unlock-recipe", recipe = "light-armor" },
        },
        prerequisites = {
            "automation",
        },
        unit =
        {
            count = 15,
            ingredients =
            {
                { "automation-science-pack", 1 },
            },
            time = 20
        },
    },
    {
        type = "technology",
        name = "glass-working-tech",
        icon = "__Compaction2__/graphics/research/glassworking.png",
        localised_description = "Glass?, Glass??, Glass???",
        icon_size = 1024,
        effects = {
            { type = "unlock-recipe", recipe = "glass" },
            { type = "unlock-recipe", recipe = "glass-tube" },
            { type = "unlock-recipe", recipe = "glass-bottle" }
        },
        prerequisites = {
            "automation",
            "world-processing-tech",
        },
        unit =
        {
            count = 15,
            ingredients =
            {
                { "automation-science-pack", 1 },
            },
            time = 20
        },
    },
    {
        type = "technology",
        name = "filtration-tech",
        icon = "__Compaction2__/graphics/research/filtration.png",
        localised_description = "Filtration",
        icon_size = 1024,
        effects = {
            { type = "unlock-recipe", recipe = "clean-filter" },
            { type = "unlock-recipe", recipe = "dirty-water" },
            { type = "unlock-recipe", recipe = "filtered-water" },
            { type = "unlock-recipe", recipe = "sack-o-dirt" },
             { type = "unlock-recipe", recipe = "alternate-landfill" },
        },
        prerequisites = {
            "chemical-processing",
        },
        unit =
        {
            count = 15,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 20
        },
    },
    {
        type = "technology",
        name = "ore-processing-tech",
        icon = "__Compaction2__/graphics/research/Ore-Processing-Tech.png",
        localised_description = "Who is actually going to do this, Ore Processing is for some people but not me.",
        icon_size = 968,
        effects = {
            { type = "unlock-recipe", recipe = "crushed-iron-ore" },
            { type = "unlock-recipe", recipe = "crushed-copper-ore" },
            { type = "unlock-recipe", recipe = "high-quality-iron-ore" },
            { type = "unlock-recipe", recipe = "high-quality-copper-ore" },
            { type = "unlock-recipe", recipe = "high-quality-iron-ore-smelting" },
            { type = "unlock-recipe", recipe = "high-quality-copper-ore-smelting" },
        },
        prerequisites = {
            "automation",
            "electronics",
            "shredder-tech",
        },
        unit =
        {
            count = 55,
            ingredients =
            {
                { "automation-science-pack", 1 },
            },
            time = 20
        },
    },
    {
        type = "technology",
        name = "silicon-processing-tech",
        icon = "__Compaction2__/graphics/research/silicon-research.png",
        localised_description = "OMG, Silicon!",
        icon_size = 1024,
        effects = {
            { type = "unlock-recipe", recipe = "silicon" },
        },
        prerequisites = {
            "automation",
            "crystal-processing-tech",
            "chemical-science-pack",
        },
        unit =
        {
            count = 185,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "crystal-processing-tech",
        icon = "__Compaction2__/graphics/research/crystal-processing.png",
        localised_description = "Well Crystal Processing has one purpose, well actually it has multiple but not yet.",
        icon_size = 1024,
        effects = {
            { type = "unlock-recipe", recipe = "crystal" },
            { type = "unlock-recipe", recipe = "diploid-chloride" },
            { type = "unlock-recipe", recipe = "sulfuric-diploid-chloride" },
            { type = "unlock-recipe", recipe = "solid-sulfuric-diploid-chloride" },
            { type = "unlock-recipe", recipe = "nugget-processing" }
        },
        prerequisites = {
            "automation",
            "electronics",
            "lamp",
            "concrete",
            "shredder-tech",
            "greenhouse-tech"
        },
        unit =
        {
            count = 350,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 40
        },
    },
    {
        type = "technology",
        name = "greenhouse-tech",
        icon = "__Compaction2__/graphics/research/greenhouse-processing.png",
        localised_description = "uUlock the ability to grow seeds like trees.",
        icon_size = 256,
        effects = {
            { type = "unlock-recipe", recipe = "green-house" },
            { type = "unlock-recipe", recipe = "greenhouse" },
        },
        prerequisites = {
            "automation",
            "electronics",
            "lamp",
            "concrete",
            "shredder-tech",
            "chemical-processing"
        },
        unit =
        {
            count = 150,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 5
        },
    },
    {
        type = "technology",
        name = "biter-biological-processing-tech",
        icon = "__Compaction2__/graphics/research/bio-lab-processing.png",
        localised_description =
        "Advanced biological processing techniques using biter organs and other biological materials.",
        icon_size = 256,
        effects = {
            { type = "unlock-recipe", recipe = "biological-lab" },
            { type = "unlock-recipe", recipe = "dissolved-nutrients" },
            { type = "unlock-recipe", recipe = "dissolving-fish" },
        },
        prerequisites = {
            "automation",
            "electronics",
            "lamp",
            "concrete",
        },
        unit =
        {
            count = 250,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "bullet-tech",
        icon = "__Compaction2__/graphics/research/ammo.png",
        localised_description =
        "Bullets technology, This is here to make your life hard, good luck trying to make a good Factory.",
        icon_size = 1024,
        effects = {
            { type = "unlock-recipe", recipe = "gunpowder" },
            { type = "unlock-recipe", recipe = "magazine" },
            { type = "unlock-recipe", recipe = "firearm-magazine" },
            { type = "unlock-recipe", recipe = "shotgun-shell" },
            { type = "unlock-recipe", recipe = "bullet-casing" },
            { type = "unlock-recipe", recipe = "shotgun-hulls" },
            { type = "unlock-recipe", recipe = "bullets" }
        },
        prerequisites = {
            "automation",
            "electronics",
            "world-processing-tech",
            "military",
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                { "automation-science-pack", 1 },
            },
            time = 3
        },
    },
    {
        type = "technology",
        name = "computronics-tech",
        icon = "__Compaction2__/graphics/research/computronics.png",
        localised_description = "Computronics technology, This is more powerful Electronics",
        icon_size = 1024,
        effects = {
            { type = "unlock-recipe", recipe = "iron-mesh" },
            { type = "unlock-recipe", recipe = "gold-mesh" },
            { type = "unlock-recipe", recipe = "ribbon-cable" },
            { type = "unlock-recipe", recipe = "ai-core" },
            { type = "unlock-recipe", recipe = "electronic-memory-chip" },
            { type = "unlock-recipe", recipe = "electronic-microchip" },
            { type = "unlock-recipe", recipe = "advanced-electronic-microchip" },
            { type = "unlock-recipe", recipe = "electronic-storage" }
        },
        prerequisites = {
            "electronics",
            "circuit-network",
            "silicon-processing-tech",
            "metal-processing"
        },
        unit =
        {
            count = 12,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 },
            },
            time = 3
        },
    },
    {
        type = "technology",
        name = "military",
        icon_size = 256,
        icon_mipmaps = 4,
        prerequisites = { "intermediate-products-tech" },
        icon = "__base__/graphics/technology/military.png",
        effects = {
            { type = "unlock-recipe", recipe = "submachine-gun" },
            { type = "unlock-recipe", recipe = "shotgun" },
        },
        unit =
        {
            count = 10,
            ingredients =
            {
                { "wooden-tech-card", 1 },
            },
            time = 15,
            order = "e-a-a"
        },
    },
    {
        type = "technology",
        name = "sulfur-processing",
        icon_size = 64,
        icon_mipmaps = 4,
        icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
        prerequisites = { "chemical-processing" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "sulfuric-acid"
            },
        },
        unit =
        {
            count = 150,
            ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } },
            time = 30
        },
        order = "d-d"
    },
    {
        type = "technology",
        name = "uranium-processing",
        icon_size = 256,
        icon_mipmaps = 4,
        icon = "__base__/graphics/technology/uranium-processing.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "uranium-processing"
            },
            {
                type = "unlock-recipe",
                recipe = "uranium-fuel-cell"
            }
        },
        prerequisites = { "chemical-science-pack", "concrete", "centrifuge-tech", "fluid-mining" },
        unit =
        {
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 }
            },
            time = 30,
            count = 200
        },
        order = "e-p-b-c"
    },
    {
        type = "technology",
        name = "centrifuge-tech",
        icon = "__base__/graphics/icons/centrifuge.png",
        localised_description = "Centrifuge technology",
        icon_size = 64,
        effects = {
            { type = "unlock-recipe", recipe = "centrifuge" },
        },
        prerequisites = { "concrete", "advanced-circuit" },
        unit =
        {
            count = 10,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 2
        },
    },
    {
        type = "technology",
        name = "crystal-centrifuge-tech",
        icon = "__Compaction2__/graphics/research/quartz.png",
        localised_description = "Crystal Centrifuge technology",
        icon_size = 1024,
        effects = {
            { type = "unlock-recipe", recipe = "crystal-processing-1" },
            { type = "unlock-recipe", recipe = "crystal-processing-2" },
            { type = "unlock-recipe", recipe = "crystal-processing-3" },
        },
        prerequisites = { "centrifuge-tech", "crystal-processing-tech" },
        unit =
        {
            count = 10,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 2
        },
    },
    {
        type = "technology",
        name = "metal-processing",
        icon = "__Compaction2__/graphics/research/metal-processing.png",
        localised_description = "Metal Processing.",
        icon_size = 1024,
        effects = {
            { type = "unlock-recipe", recipe = "nugget-processing" },
            { type = "unlock-recipe", recipe = "nugget-processing-1" },
            { type = "unlock-recipe", recipe = "gold-ingot" },
            { type = "unlock-recipe", recipe = "gold-foil" }
        },
        prerequisites = {
            "automation",
            "electronics",
            "shredder-tech",
            "crystal-processing-tech"
        },
        unit =
        {
            count = 160,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 15
        },
    },
    {
        type = "technology",
        name = "chemical-processing",
        icon = "__base__/graphics/icons/chemical-plant.png",
        localised_description = "Chemical Processing, Unlock the chemical plant.",
        icon_size = 64,
        effects = {
            { type = "unlock-recipe", recipe = "chemical-plant" }
        },
        prerequisites = {
            "fluid-handling",
        },
        unit =
        {
            count = 10,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "intermediate-products-tech",
        icon = "__Compaction2__/graphics/research/intermediate-products.png",
        localised_description = "Unlock the basic intermediates.",
        icon_size = 256,
        effects = {
            { type = "unlock-recipe", recipe = "iron-gear-wheel" },
            { type = "unlock-recipe", recipe = "iron-stick" },
            { type = "unlock-recipe", recipe = "metal-bearing" },
            { type = "unlock-recipe", recipe = "burner-inserter" },
        },
        prerequisites = {},
        research_trigger =
        {
            type = "craft-item",
            item = "iron-plate",
            count = 5,
        },
    },
    {
        type = "technology",
        name = "electronics",
        icon = "__base__/graphics/technology/electronics.png",
        icon_size = 256,
        prerequisites = { "intermediate-products-tech" },
        effects =
        {
            { type = "unlock-recipe", recipe = "wooden-tech-card" },
            { type = "unlock-recipe", recipe = "electronic-circuit" },
            { type = "unlock-recipe", recipe = "basic-circuit" },
            { type = "unlock-recipe", recipe = "electronic-parts" },
            { type = "unlock-recipe", recipe = "wooden-electronic-board" },
            { type = "unlock-recipe", recipe = "copper-cable" },
            { type = "unlock-recipe", recipe = "small-electric-pole" }
        },
        research_trigger =
        {
            type = "craft-item",
            item = "copper-plate",
            count = 10
        }
    },
    {
        type = "technology",
        name = "automation",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "assembling-machine-1"
            },
            {
                type = "unlock-recipe",
                recipe = "long-handed-inserter"
            },
            {
                type = "unlock-recipe",
                recipe = "inserter"
            }
        },
        prerequisites = { "electronics", "automation-science-pack" },
        unit =
        {
            count = 10,
            ingredients = { { "wooden-tech-card", 1 }, {"automation-science-pack", 1 } },
            time = 10
        },
        ignore_tech_cost_multiplier = true
    },
    {
        type = "technology",
        name = "automation-science-pack",
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        essential = true,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "empty-science-pack"
            },
            {
                type = "unlock-recipe",
                recipe = "automation-science-pack"
            }
        },
        prerequisites = { "electronics" },
        research_trigger =
        {
            type = "craft-item",
            item = "burner-lab"
        }
    },
    {
        type = "technology",
        name = "oil-processing",
        icon = "__base__/graphics/technology/oil-processing.png",
        icon_size = 256,
        prerequisites = { "oil-gathering", "chemical-processing" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "oil-refinery"
            },
            {
                type = "unlock-recipe",
                recipe = "basic-oil-processing"
            },
            {
                type = "unlock-recipe",
                recipe = "solid-fuel-from-petroleum-gas"
            }
        },
        research_trigger =
        {
            type = "mine-entity",
            entity = "crude-oil"
        }
    },
    {
        type = "technology",
        name = "basic-fluid-handling",
        icon = "__Compaction2__/graphics/research/basic-fluid-handling.png",
        icon_size = 256,
        prerequisites = { "intermediate-products-tech" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "pipe"
            },
            {
                type = "unlock-recipe",
                recipe = "pipe-to-ground"
            },
            {
                type = "unlock-recipe",
                recipe = "offshore-pump"
            },
        },
        unit =
        {
            count = 5,
            ingredients =
            {
                { "wooden-tech-card", 1 },
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "steam-power",
        icon = "__base__/graphics/technology/steam-power.png",
        icon_size = 256,
        prerequisites = { "basic-fluid-handling", "intermediate-products-tech" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "boiler"
            },
            {
                type = "unlock-recipe",
                recipe = "steam-engine"
            }
        },
        unit =
        {
            count = 15,
            ingredients =
            {
                { "wooden-tech-card", 1 },
            },
            time = 15
        },
    },
    {
        type = "technology",
        name = "fluid-mining",
        icon = "__Compaction2__/graphics/research/fluid-mining.png",
        icon_size = 256,
        prerequisites = { "electric-mining-drill", "automation-science-pack", },
        effects =
        {
            {
                type = "mining-with-fluid",
                modifier = true
            }
        },
        unit =
        {
            count = 10,
            ingredients =
            {
                { "automation-science-pack", 1 },
            },
            time = 10
        },
    },
})
