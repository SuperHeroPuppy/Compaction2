data:extend({
  {
    type = "item",
    name = "crash-site-spaceship",
    icon = "__base__/graphics/icons/crash-site-spaceship.png",
    icon_size = 64,
    icon_mipmaps = 4,
    stack_size = 1,
    place_result = "crash-site-spaceship",
    flags = { "not-stackable", "always-show" },
    subgroup = "storage",
    order = "a[items]-d[crash-site-spaceship]"
  },

  {
    type = "simple-entity",
    name = "crash-site-exit",
    icon = "__core__/graphics/empty.png",
    icon_size = 1,
    flags = { "placeable-neutral", "player-creation" },
    collision_box = { { -1.5, -0.5 }, { 1.5, 0.5 } },
    selection_box = { { -1.5, -0.5 }, { 1.5, 0.5 } }
  },

  {
    type = "container",
    name = "crash-site-chest-1",
    icon = "__base__/graphics/icons/crash-site-chest.png",
    flags = { "placeable-neutral", "player-creation" },
    hidden = true,
    max_health = 350,
    minable = { mining_time = 1 },
    corpse = "small-remnants",
    resistances = {
      { type = "fire", percent = 100 },
      { type = "impact", percent = 100 }
    },
    collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fast_replaceable_group = "container",
    inventory_size = 5,
    integration_patch = {
      filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-1-ground.png",
      width = 220,
      height = 148,
      shift = util.by_pixel(-6, 12),
      scale = 0.5
    },
    picture = {
      layers = {
        {
          filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-1.png",
          width = 120,
          height = 76,
          shift = util.by_pixel(2, 8),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-1-shadow.png",
          width = 210,
          height = 128,
          shift = util.by_pixel(-2, 3),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },

  {
    type = "container",
    name = "crash-site-chest-2",
    icon = "__base__/graphics/icons/crash-site-chest.png",
    flags = { "not-deconstructable", "placeable-neutral", "player-creation" },
    hidden = true,
    max_health = 350,
    corpse = "small-remnants",
    resistances = {
      { type = "fire", percent = 100 },
      { type = "impact", percent = 100 }
    },
    collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fast_replaceable_group = "container",
    inventory_size = 5,
    integration_patch = {
      filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-2-ground.png",
      width = 218,
      height = 186,
      shift = util.by_pixel(-10, 5),
      scale = 0.5
    },
    picture = {
      layers = {
        {
          filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-2.png",
          width = 116,
          height = 88,
          shift = util.by_pixel(0, 8),
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/crash-site-chests/crash-site-chest-2-shadow.png",
          width = 188,
          height = 126,
          shift = util.by_pixel(0, 5),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  }
})

-- spaceship tuning
data.raw.container["crash-site-spaceship"].minable.result = "crash-site-spaceship"
data.raw.container["crash-site-spaceship"].inventory_size = 5

-- clean flags
local flags = {}
for _, flag in ipairs(data.raw.container["crash-site-spaceship"].flags) do
  if flag ~= "placeable-off-grid" then
    flags[#flags + 1] = flag
  end
end
data.raw.container["crash-site-spaceship"].flags = flags

data.raw.container["crash-site-spaceship"].weight = 10 * tons

-- Space Age compatibility
if mods["space-age"] then
  data.raw.container["crash-site-spaceship"].surface_conditions = {
    { property = "gravity", min = 10, max = 10 },
    { property = "pressure", min = 1000, max = 1000 }
  }
end