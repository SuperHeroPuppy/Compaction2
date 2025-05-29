local burner_lab = table.deepcopy(data.raw.lab.lab)
data.raw.lab.lab.fast_replaceable_group = data.raw.lab.lab.fast_replaceable_group or "lab"
burner_lab.name = "burner-lab"
burner_lab.minable.result = "burner-lab"
burner_lab.next_upgrade = "lab"
burner_lab.icon = "__Compaction2__/graphics/icons/burner-lab.png"
burner_lab.icon_size = 64
burner_lab.icon_mipmaps = 1
burner_lab.inputs =
    {
      "automation-science-pack",
      "logistic-science-pack"
    }
burner_lab.energy_source =
{
  type = "burner",
  fuel_categories = {"chemical", data.raw["fuel-category"]["processed-chemical"] and "processed-chemical"},
  effectivity = 0.9,
  fuel_inventory_size = 1,
  emissions_per_joule = 4,
  light_flicker =
  {
    minimum_light_size = 1,
    light_intensity_to_size_coefficient = 0.25,
    color = {1,0.4,0},
    minimum_intensity = 0.1,
    maximum_intensity = 0.3
  },
  smoke =
  {
    {
      name = "smoke",
      deviation = {0.1, 0.1},
      position = {0.0, -0.9},
      frequency = 4
    }
  }
}
burner_lab.on_animation =
{
  layers =
  {
    {
      filename = "__Compaction2__/graphics/entity/burner-lab/burner-lab.png",
      width = 194,
      height = 174,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = util.by_pixel(0, 1.5),
      scale = 0.5
    },
    {
      filename = "__base__/graphics/entity/lab/lab-integration.png",
      width = 242,
      height = 162,
      line_length = 1,
      repeat_count = 33,
      animation_speed = 1 / 3,
      shift = util.by_pixel(0, 15.5),
      scale = 0.5
    },
    {
      filename = "__Compaction2__/graphics/entity/burner-lab/burner-lab-light.png",
      blend_mode = "additive",
      draw_as_light = true,
      width = 216,
      height = 194,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = util.by_pixel(0, 0),
      scale = 0.5
    },
    {
      filename = "__Compaction2__/graphics/entity/burner-lab/lab-shadow.png",
      width = 243,
      height = 136,
      line_length = 1,
      repeat_count = 33,
      animation_speed = 1 / 3,
      shift = util.by_pixel(13, 11),
      scale = 0.5,
      draw_as_shadow = true
    }
  }
}
burner_lab.off_animation =
{
  layers =
  {
    {
      filename = "__Compaction2__/graphics/entity/burner-lab/burner-lab.png",
      width = 194,
      height = 174,
      shift = util.by_pixel(0, 1.5),
      scale = 0.5
    },
    {
      filename = "__base__/graphics/entity/lab/lab-integration.png",
      width = 242,
      height = 162,
      shift = util.by_pixel(0, 15.5),
      scale = 0.5
    },
    {
      filename = "__Compaction2__/graphics/entity/burner-lab/lab-shadow.png",
      width = 243,
      height = 136,
      shift = util.by_pixel(13, 11),
      draw_as_shadow = true,
      scale = 0.5
    }
  }
}
burner_lab.module_specification = nil

data:extend({ burner_lab })