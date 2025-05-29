data:extend({
  {
    type = "assembling-machine",
    name = "green-house",
    max_health = 500,
    flags = { "placeable-neutral", "player-creation" },
    dying_explosion = "big-explosion",
    collision_box = { { -3.25, -3.25 }, { 3.25, 3.25 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    module_slots = 3,
    minable = { mining_time = 0.3, result = "green-house" },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_joule = -5,
    },
    energy_usage = "144800W",
    ingredient_count = 4,
    crafting_speed = 1,
    crafting_categories = { "green-house" },
    icon = "__Compaction2__/graphics/icons/green-house.png",
    icon_size = 64,
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
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = -1,
        volume = 2000,
        pipe_connections = {
          { flow_directio = "input-output",  position = { 0, -3 }, direction = defines.direction.north },
          { flow_direction = "input-output", position = { -3, 0 }, direction = defines.direction.west },
          { flow_direction = "input-output", position = { 3, 0 },  direction = defines.direction.east },
          { flow_direction = "input-output", position = { 0, 3. },  direction = defines.direction.south },
        },
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = false,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__Compaction2__/graphics/entity/green-house/green-house.png",
            priority = "high",
            width = 512,
            height = 512,
            frame_count = 1,
            scale = 0.5,
          },
          {
            filename = "__Compaction2__/graphics/entity/green-house/green-house-sh.png",
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
          draw_as_light = true,
          animation = {
            filename = "__Compaction2__/graphics/entity/green-house/green-house-light.png",
            width = 512,
            height = 512,
            frame_count = 1,
            repeat_count = 10,
            scale = 0.5,
            animation_speed = 0.35,
          },
        },
        {
          animation = {
            filename = "__Compaction2__/graphics/entity/green-house/green-house-working.png",
            width = 512,
            height = 512,
            frame_count = 10,
            line_length = 5,
            scale = 0.5,
            animation_speed = 0.35,
          },
        },
      },
    },
    working_sound = {
      sound = {
        filename = "__Compaction2__/sounds/green-house.ogg",
        volume = 0.75
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  }
})

data:extend {
  {
    type = "recipe-category",
    name = "green-house"
  },
  {
    type = "item",
    name = "green-house",
    icon = "__Compaction2__/graphics/icons/green-house.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g",
    place_result = "green-house",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "green-house",
    category = "crafting",
    energy_required = 2.5,
    crafting_speed = 0.6,
    enabled = false,
    ingredients = {
      { type = "item", name = "concrete",       amount = 5 },
      { type = "item", name = "steel-plate",    amount = 8 },
      { type = "item", name = "small-lamp",     amount = 2 },
      { type = "item", name = "iron-gear-wheel", amount = 6 },
      { type = "item", name = "electronic-circuit", amount = 3 },
    },
    results = { { type = "item", name = "green-house", amount = 1 } }
  },
  {
    type = "recipe",
    name = "greenhouse",
    category = "green-house",
    subgroup = "item-growing",
    enabled = false,
    energy_required = 5.5,
    crafting_speed = 5.5,
    icon = "__base__/graphics/icons/wood.png",
    icon_size = 64,
    ingredients = {
      { type = "fluid", name = "water",  amount = 570 },
      { type = "item", name = "tree-seeds", amount = 2 },
    },
    results = {
      { type = "item", name = "wood",   amount = 25 },
      { type = "item", name = "tree-seeds", amount_min = 3, amount_max = 5, probability = 0.5 },
    },
  },
  {
    type = "recipe",
    name = "crystal",
    category = "green-house",
    energy_required = 5.0,
    crafting_speed = 2.8,
    main_product = "quartz",
    icon = "__Compaction2__/graphics/research/crystal-processing.png",
    icon_size = 1024,
    subgroup = "item-growing",
    enabled = false,
    ingredients = {
      { type = "item", name = "gravel", amount = 5 },
      { type = "item", name = "sand", amount = 5 },
      { type = "fluid", name = "water", amount = 570 },
    },
    results = {
      {
        type = "item",
        name = "quartz",
        amount = 5,
        probability = 0.4
      },
      {
        type = "item",
        name = "azure-crystal",
        amount = 4,
        probability = 0.4
      },
      {
        type = "item",
        name = "pyrite-crystal",
        amount = 3,
        probability = 0.6
      },
      {
        type = "item",
        name = "fluorite-crystal",
        amount = 5,
        probability = 0.2
      },
      {
        type = "item",
        name = "solid-diploid-chloride",
        amount = 25,
        probability = 0.5
      },
      {
        type = "item",
        name = "material-blob",
        amount = 10,
        probability = 0.2
      },
    },
  }
}
