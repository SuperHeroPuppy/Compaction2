--local machine = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
--machine.name = "modular-assembler"
--machine.minable.result = "modular-assembler"
--machine.crafting_speed = 0.4
--machine.energy_usage = "3.2kJ"
--machine.allowed_effects = {"consumption", "speed", "pollution", "productivity"}
--machine.module_specification = {module_slots = 5}
--machine.crafting_categories = {"modular-crafting"}

-- Check if animation layers exist before attempting to index
--if machine.animation and machine.animation.layers then
--    local tint = { r = 1, g = 0, b = 0, a = 1 }
--    machine.animation.layers[1].tint = tint
--end


local machine = {
    type = "assembling-machine",
    name = "modular-assembler",
    icon = "__Compaction2__/graphics/icons/modular-assembler.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "modular-assembler"},
    max_health = 900,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    module_slots = 2,
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_speed = 0.4,
    energy_usage = "5.2kJ",
    crafting_categories = {"modular-crafting"},
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
        { variation = 32, main_offset = util.by_pixel( 66.5, -59.5), shadow_offset = util.by_pixel( 66.5, -59.5), show_shadow = true },
        { variation = 32, main_offset = util.by_pixel( 66.5, -59.5), shadow_offset = util.by_pixel( 66.5, -59.5), show_shadow = true },
        { variation = 32, main_offset = util.by_pixel( 66.5, -59.5), shadow_offset = util.by_pixel( 66.5, -59.5), show_shadow = true },
        { variation = 32, main_offset = util.by_pixel( 66.5, -59.5), shadow_offset = util.by_pixel( 66.5, -59.5), show_shadow = true },
      }
    ),
    graphics_set = {
      animation =
      {
        layers =
        {
          {
            draw_as_shadow = true,
            filename = "__Compaction2__/graphics/entity/modular-assembler/modular-assembler-shadow.png",
            priority = "high",
            width = 520,
            height = 500,
            frame_count = 1,
            line_length = 1,
            repeat_count = 99,
            animation_speed = animation_speed,
            shift = util.by_pixel_hr(0, -16),
            scale = 0.5,
          },
          {
            priority = "high",
            width = 320,
            height = 320,
            frame_count = 99,
            shift = util.by_pixel_hr(0, -16),
            animation_speed = animation_speed,
            scale = 0.5,
            stripes =
            {
              {
                filename = "__Compaction2__/graphics/entity/modular-assembler/modular-assembler-1.png",
                width_in_frames = 8,
                height_in_frames = 8,
              },
              {
                filename = "__Compaction2__/graphics/entity/modular-assembler/modular-assembler-2.png",
                width_in_frames = 8,
                height_in_frames = 8,
              },
            },
          },
        },
      },
      working_visualisations = {{
        fadeout = true,
        secondary_draw_order = 1,
        animation = {
          layers = {
            {
              size = {320, 320},
              shift = util.by_pixel_hr(0, -16),
              scale = 0.5,
              frame_count = 99,
              draw_as_glow = true,
              blend_mode = "additive",
              animation_speed = animation_speed,
              stripes =
              {
                {
                  filename = "__Compaction2__/graphics/entity/modular-assembler/modular-assembler-emission-1.png",
                  width_in_frames = 8,
                  height_in_frames = 8,
                },
                {
                  filename = "__Compaction2__/graphics/entity/modular-assembler/modular-assembler-emission-2.png",
                  width_in_frames = 8,
                  height_in_frames = 8,
                },
              },
            },
          },
        },
      }},
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t3-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
}


data:extend{
    machine
}

data:extend{
    {
        type = "recipe-category",
        name = "modular-crafting"
    },
    {
        type = "item",
        name = "modular-assembler",
        icon = "__Compaction2__/graphics/icons/modular-assembler.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "production-machine",
        order = "d",
        place_result = "modular-assembler",
        stack_size = 50
    }
}