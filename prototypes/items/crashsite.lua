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

local flags = {}
for _, flag in ipairs(data.raw.container['crash-site-spaceship'].flags) do
  if flag ~= 'placeable-off-grid' then
    flags[#flags + 1] = flag
  end
end
data.raw.container['crash-site-spaceship'].flags = flags
