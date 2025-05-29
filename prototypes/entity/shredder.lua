local shredder = {
    type = "assembling-machine",
    name = "shredder",
    icon = "__Compaction2__/graphics/icons/shredder.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "shredder"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    module_slots = 5,
    collision_box = { { -3.25, -3.25 }, { 3.25, 3.25 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    crafting_speed = 0.4,
    energy_usage = "5.2kJ",
    crafting_categories = {"shredder-crafting"},
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_joule = 1,
    },
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions.create_vector
    (
      universal_connector_template,
      {
        { variation =  1, main_offset = util.by_pixel( 89.5, -108.75), shadow_offset = util.by_pixel( 89.5, -108.75), show_shadow = true },
        { variation =  1, main_offset = util.by_pixel( 89.5, -108.75), shadow_offset = util.by_pixel( 89.5, -108.75), show_shadow = true },
        { variation =  1, main_offset = util.by_pixel( 89.5, -108.75), shadow_offset = util.by_pixel( 89.5, -108.75), show_shadow = true },
        { variation =  1, main_offset = util.by_pixel( 89.5, -108.75), shadow_offset = util.by_pixel( 89.5, -108.75), show_shadow = true },
      }
    ),
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__Compaction2__/graphics/entity/shredder/shredder.png",
            priority = "high",
            width = 512,
            height = 512,
            frame_count = 30,
            line_length = 6,
            animation_speed = 0.75,
            scale = 0.5,
          },
          {
            filename = "__Compaction2__/graphics/entity/shredder/shredder-shadow.png",
            priority = "high",
            width = 512,
            height = 512,
            repeat_count = 30,
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      water_reflection = {
        pictures = {
          filename = "__Compaction2__/graphics/entity/shredder/shredder-reflection.png",
          priority = "extra-high",
          width = 80,
          height = 60,
          shift = util.by_pixel(0, 40),
          variation_count = 1,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = false,
      },
    },
    working_sound = {
        sound = {
            filename = "__Compaction2__/sounds/shredder.ogg",
            volume = 0.75
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
    }
}

data:extend{
    shredder
}

data:extend{
    {
        type = "recipe-category",
        name = "shredder-crafting"
    },
    {
        type = "item",
        name = "shredder",
        icon = "__Compaction2__/graphics/icons/shredder.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "production-machine",
        order = "e",
        place_result = "shredder",
        stack_size = 50
    }
}