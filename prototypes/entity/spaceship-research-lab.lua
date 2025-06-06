local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "lab",
    name = "spaceship-research-lab",
    icon = "__Compaction2__/graphics/icons/spaceship-research-lab.png",
    flags = { "placeable-player", "player-creation", "not-rotatable" },
    hidden = true,
    map_color = { r = 0, g = 0.365, b = 0.58, a = 1 },
    max_health = 150,
    resistances = {
      { type = "fire",     percent = 100 },
      { type = "impact",   percent = 60 },
      { type = "physical", percent = 50 },
    },
    corpse = "big-remnants",
    minable = {
      mining_time = 4,
      results = {
        { type = "item", name = "iron-plate",         amount_min = 5, amount_max = 13, probability = 1 },
        { type = "item", name = "copper-cable",       amount_min = 4, amount_max = 8,  probability = 1 },
        { type = "item", name = "iron-gear-wheel",    amount_min = 3, amount_max = 5,  probability = 0.75 },
        { type = "item", name = "electronic-circuit", amount_min = 2, amount_max = 3,  probability = 0.75 },
      },
      mining_particle = "shell-particle",
      transfer_entity_health_to_products = false,
    },
    dying_explosion = "medium-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    collision_box = { { -2.2, -1.2 }, { 2.2, 1.2 } },
    selection_box = { { -2.5, -1.5 }, { 2.5, 1.5 } },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 4 },
    },
    energy_usage = "60kW",
    researching_speed = 1,
    inputs = { "wooden-tech-card" },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        audible_distance_modifier = 0.7,
        filename = "__base__/sound/lab.ogg",
        volume = 0.7,
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    alert_icon_shift = util.by_pixel(37.5, 0),
    icons_positioning =
    {
      { inventory_index = defines.inventory.lab_input, shift = util.by_pixel(37.5, -27.5) }
    },
    on_animation = {
      layers = {
        {
          filename = "__Compaction2__/graphics/entity/spaceship-research-lab/spaceship-research.png",
          width = 488,
          height = 252,
          frame_count = 1,
          line_length = 1,
          repeat_count = 24,
          animation_speed = 1 / 3,
          shift = util.by_pixel(-18, 14),
          scale = 0.5,
        },
        {
          filename = "__Compaction2__/graphics/entity/spaceship-research-lab/spaceship-research-beams.png",
          width = 130,
          height = 100,
          frame_count = 24,
          line_length = 6,
          animation_speed = 1 / 3,
          shift = util.by_pixel(37, -20),
          draw_as_glow = true,
          blend_mode = "additive",
          scale = 0.5,
        },
        {
          filename = "__Compaction2__/graphics/entity/spaceship-research-lab/spaceship-research-beams-light.png",
          width = 130,
          height = 100,
          frame_count = 24,
          line_length = 6,
          animation_speed = 1 / 3,
          shift = util.by_pixel(37, -20),
          draw_as_light = true,
          blend_mode = "additive",
          scale = 0.5,
        },
        {
          filename = "__Compaction2__/graphics/entity/spaceship-research-lab/spaceship-research-shadow.png",
          width = 696,
          height = 302,
          frame_count = 1,
          line_length = 1,
          repeat_count = 24,
          animation_speed = 1 / 3,
          shift = util.by_pixel(-11, 12),
          scale = 0.5,
          draw_as_shadow = true,
        },
      },
    },
    off_animation = {
      layers = {
        {
          filename = "__Compaction2__/graphics/entity/spaceship-research-lab/spaceship-research.png",
          width = 488,
          height = 252,
          frame_count = 1,
          line_length = 1,
          repeat_count = 24,
          animation_speed = 1 / 3,
          shift = util.by_pixel(-18, 14),
          scale = 0.5,
        },
        {
          filename = "__Compaction2__/graphics/entity/spaceship-research-lab/spaceship-research-shadow.png",
          width = 696,
          height = 302,
          frame_count = 1,
          line_length = 1,
          repeat_count = 24,
          animation_speed = 1 / 3,
          shift = util.by_pixel(-11, 12),
          scale = 0.5,
          draw_as_shadow = true,
        },
      },
    },
    light = {
      intensity = 0.34,
      size = 3,
      color = { r = 0.196, g = 0.658, b = 0.650 },
      shift = { 1.5, 0.5 },
    },
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = "__Compaction2__/graphics/entity/spaceship-research-lab/spaceship-research-ground.png",
      width = 700,
      height = 344,
      shift = util.by_pixel(-49, 11),
      frame_count = 1,
      line_length = 1,
      scale = 0.5,
    },
  },
})

data:extend {
  {
    type = "item",
    name = "spaceship-research-lab",
    icon = "__Compaction2__/graphics/icons/spaceship-research-lab.png",
    icon_size = 64, icon_mipmaps = 1,
    stack_size = 1,
    place_result = "spaceship-research-lab"
  }
}
