data:extend { {
  type = 'item',
  name = 'crash-site-spaceship',
  icon = '__base__/graphics/icons/crash-site-spaceship.png',
  icon_size = 64,
  icon_mipmaps = 4,
  stack_size = 1,
  place_result = 'crash-site-spaceship',
  flags = { 'not-stackable', 'always-show' },
  subgroup = 'storage',
  order = 'a[items]-d[crash-site-spaceship]'
} }

data:extend({
  {
    type = "simple-entity",
    name = "crash-site-exit",
    icon = "__core__/graphics/empty.png",
    icon_size = 1,
    flags = { "placeable-neutral", "player-creation" },
    collision_box = { { -1.5, -0.5 }, { 1.5, 0.5 } },
    selection_box = { { -1.5, -0.5 }, { 1.5, 0.5 } },
  }
})

data:extend(
  {
    {
      type = "container",
      name = "crash-site-chest-1",
      icon = "__base__/graphics/icons/crash-site-chest.png",
      flags = { "placeable-neutral", "player-creation" },
      hidden = true,
      max_health = 350,
      minable = { mining_time = 1 },
      corpse = "small-remnants",
      resistances =
      {
        {
          type = "fire",
          percent = 100
        },
        {
          type = "impact",
          percent = 100
        }
      },
      collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fast_replaceable_group = "container",
      inventory_size = 5,
      integration_patch =
      {
        filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-1-ground.png",
        priority = crash_site_sprite_priority,
        width = 220,
        height = 148,
        shift = util.by_pixel(-6, 12),
        scale = 0.5
      },

      picture =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-1.png",
            priority = "extra-high",
            width = 120,
            height = 76,
            shift = util.by_pixel(2, 8),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-1-shadow.png",
            priority = "extra-high",
            width = 210,
            height = 128,
            shift = util.by_pixel(-2, 3),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      circuit_connector = circuit_connector_definitions["chest"],
      circuit_wire_max_distance = default_circuit_wire_max_distance
    },

    {
      type = "container",
      name = "crash-site-chest-2",
      icon = "__base__/graphics/icons/crash-site-chest.png",
      flags = { "not-deconstructable", "placeable-neutral", "player-creation" },
      hidden = true,
      max_health = 350,
      corpse = "small-remnants",
      resistances =
      {
        {
          type = "fire",
          percent = 100
        },
        {
          type = "impact",
          percent = 100
        }
      },
      collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fast_replaceable_group = "container",
      inventory_size = 5,
      integration_patch =
      {
        filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-2-ground.png",
        priority = crash_site_sprite_priority,
        width = 218,
        height = 186,
        shift = util.by_pixel(-10, 5),
        scale = 0.5
      },

      picture =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-2.png",
            priority = "extra-high",
            width = 116,
            height = 88,
            shift = util.by_pixel(0, 8),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-2-shadow.png",
            priority = "extra-high",
            width = 188,
            height = 126,
            shift = util.by_pixel(0, 5),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      circuit_connector = circuit_connector_definitions["chest"],
      circuit_wire_max_distance = default_circuit_wire_max_distance
    }
  })

data.raw.container['crash-site-spaceship'].minable.result = 'crash-site-spaceship'
data.raw.container['crash-site-spaceship'].inventory_size = 5

local crash_site_interior_power_pole = table.deepcopy(data.raw["electric-pole"]["small-electric-pole"])
crash_site_interior_power_pole.name = "crash-site-interior-power-pole"
crash_site_interior_power_pole.flags = { "placeable-off-grid", "not-on-map", "not-blueprintable", "not-deconstructable" }
crash_site_interior_power_pole.hidden = true
crash_site_interior_power_pole.selectable_in_game = false
crash_site_interior_power_pole.collision_mask = { layers = {} }
crash_site_interior_power_pole.collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } }
crash_site_interior_power_pole.selection_box = { { -0.1, -0.1 }, { 0.1, 0.1 } }
crash_site_interior_power_pole.maximum_wire_distance = 64
crash_site_interior_power_pole.supply_area_distance = 64
crash_site_interior_power_pole.pictures = {
  filename = "__core__/graphics/empty.png",
  width = 1,
  height = 1,
  direction_count = 1,
}
crash_site_interior_power_pole.connection_points = {
  {
    shadow = { copper = { 0, 0 }, green = { 0, 0 }, red = { 0, 0 } },
    wire = { copper = { 0, 0 }, green = { 0, 0 }, red = { 0, 0 } },
  },
}
crash_site_interior_power_pole.minable = nil

data:extend({
  {
    type = "electric-energy-interface",
    name = "crash-site-power-link",
    icon = "__base__/graphics/icons/crash-site-spaceship.png",
    flags = { "placeable-off-grid", "not-on-map", "not-blueprintable", "not-deconstructable" },
    hidden = true,
    selectable_in_game = false,
    collision_mask = { layers = {} },
    collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
    selection_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
    energy_source = {
      type = "electric",
      buffer_capacity = "240kJ",
      usage_priority = "secondary-input",
      input_flow_limit = "240kW",
      output_flow_limit = "0kW",
    },
    energy_usage = "240kW",
    energy_production = "0kW",
    picture = {
      filename = "__core__/graphics/empty.png",
      width = 1,
      height = 1,
    }
  },
  crash_site_interior_power_pole,
})

local flags = {}
for _, flag in ipairs(data.raw.container['crash-site-spaceship'].flags) do
  if flag ~= 'placeable-off-grid' then
    flags[#flags + 1] = flag
  end
end
data.raw.container['crash-site-spaceship'].flags = flags

data.raw.container['crash-site-spaceship'].weight = 10 * tons

if (mods["space-age"]) then
  data.raw.container['crash-site-spaceship'].surface_conditions =
  {
    {
      property = "gravity",
      min = 10,
      max = 10
    },
    {
      property = "pressure",
      min = 1000,
      max = 1000
    }
  }
end
