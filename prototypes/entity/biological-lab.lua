data:extend {
  {
    type = "assembling-machine",
    name = "biological-lab",
    icon = "__Compaction2__/graphics/icons/biological-lab.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.3, result = "biological-lab" },
    max_health = 300,
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    module_slots = 2,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = { { -3.25, -3.25 }, { 3.25, 3.25 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    fast_replaceable_group = "assembling-machine",
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = kr_pipe_path,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = -1,
        volume = 2000,
        pipe_connections = {
          { flow_directio = "input",  position = { 0, -3 }, direction = defines.direction.north },
          { flow_directio = "output", position = { 0, 3 },  direction = defines.direction.south },
        },
      },
      {
        production_type = "input",
        pipe_picture = kr_pipe_path,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = -1,
        volume = 2000,
        pipe_connections = {
          { flow_directio = "input",  position = { 3, 0 },  direction = defines.direction.east },
          { flow_directio = "output", position = { -3, 0 }, direction = defines.direction.west },
        },
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = false,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__Compaction2__/graphics/entity/biological-lab/bio-lab.png",
            priority = "high",
            width = 512,
            height = 512,
            frame_count = 1,
            scale = 0.5,
          },
          {
            filename = "__Compaction2__/graphics/entity/biological-lab/bio-lab-sh.png",
            priority = "high",
            width = 512,
            height = 512,
            shift = { 0.32, 0 },
            frame_count = 1,
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__Compaction2__/graphics/entity/biological-lab/bio-lab-working.png",
            width = 387,
            height = 342,
            shift = { 0.05, -0.31 },
            frame_count = 30,
            line_length = 5,
            scale = 0.5,
            animation_speed = 0.35,
          },
        },
      },
    },
    crafting_categories = { "biologically-researching" },
    crafting_speed = 1.0,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_joule = 1
    },
    energy_usage = "150kW",
    ingredient_count = 4,
    working_sound = {
      sound = {
        filename = "__Compaction2__/sounds/bio-lab.ogg",
        volume = 0.7
      },
      idle_sound = {
        filename = "__base__/sound/idle1.ogg",
        volume = 0.3
      },
      apparent_volume = 1.5
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
  }
}

data:extend {
  {
    type = "recipe-category",
    name = "biologically-researching"
  },
  {
    type = "item",
    name = "biological-lab",
    icon = "__Compaction2__/graphics/icons/biological-lab.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "e",
    place_result = "biological-lab",
    stack_size = 50
  }
}
