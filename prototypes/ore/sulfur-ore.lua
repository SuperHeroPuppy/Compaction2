local resource_autoplace = require "resource-autoplace"

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["sulfur-ore"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["sulfur-ore"] = {}

-- Autoplace control
data:extend({
    {
        type = "autoplace-control",
        name = "sulfur-ore",
        richness = true,
        category = "resource",
        order = "s[sulfur]",
    }
})

-- Resource
data:extend({
    {
        type = "resource",
        name = "sulfur-ore",
        icon = "__base__/graphics/icons/sulfur.png",
        icon_size = 64,
        mipmaps = 4,
        flags = { "placeable-neutral" },
        order = "s[sulfur]",
        minable =
        {
            hardness = 3,
            mining_particle = "stone-particle",
            mining_time = 0.75,
            fluid_amount = 1,
            required_fluid = "water",
             result = "sulfur"
        },
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        autoplace = resource_autoplace.resource_autoplace_settings {
            name = "sulfur-ore",
            order = "s[sulfur]",
            base_density = 10,
            base_spots_per_km2 = 3,
            has_starting_area_placement = true,
            starting_rq_factor_multiplier = 0.5,
            random_spot_size_minimum = 2,
            random_spot_size_maximum = 5,
            regular_blob_amplitude_multiplier = 0.4,
            regular_rq_factor_multiplier = 0.9,
            candidate_spot_count = 22,
        },
        stage_counts = { 10000, 6000, 4000, 2000, 1000, 500, 200, 10 },
        stages =
        {
            sheet =
            {
                filename = "__Compaction2__/graphics/entity/ores/sulfur-ore.png",
                priority = "extra-high",
                width = 1024,
                height = 1024,
                size = 64,
                frame_count = 4,
                variation_count = 8,
            }
        },
        map_color = { r = 255, g = 255, b = 0 },
    }
})
