require("scripts/loot");
require("scripts/menu");

require("prototypes/items/items");
require("prototypes/items/alerts");
require("prototypes/items/crashsite");
require("prototypes/items/parts")
require("prototypes/items/scrap")

require("prototypes/recipes/recipes");

require("prototypes/fluids/fluids");

require("prototypes/item-group/item-group");

require("prototypes/technology/technology");

require("prototypes/entity/modular-assembler");
require("prototypes/entity/shredder");
require("prototypes/entity/robo-port");
require("prototypes/entity/logistic-bot");
require("prototypes/entity/construction-bot");
require("prototypes/entity/requester-chest");
require("prototypes/entity/storage-chest");
require("prototypes/entity/green-house");
require("prototypes/entity/burner-lab");
require("prototypes/entity/biological-lab");
require("prototypes/entity/fusion-reactor");
require("prototypes/entity/triple-beacon");
require("prototypes/entity/infinity-provider-chest");
require("prototypes/entity/spaceship-research-lab");
require("prototypes/entity/spaceship-reactor");
require("prototypes/entity/tiles");

require("prototypes/entity/logos");

require("prototypes/space-age/items");
require("prototypes/space-age/fluid");
require("prototypes/space-age/recipes");
require("prototypes/space-age/technology");
require("prototypes/space-age/tree-plant");

if not data.raw.resource["sulfur-ore"] then
    require("prototypes/ore/sulfur-ore");
end

table.insert(data.raw["lab"]["lab"].inputs, "flight-science-pack")

if (mods["space-age"]) then
    table.insert(data.raw["lab"]["biolab"].inputs, "flight-science-pack")
end

for name, tree in pairs (data.raw["tree"]) do
    if string.find(name, "tree%-%d%d") then
        log("changing the mining results of "..name)
        tree.minable = {
            mining_time = 1,
            results = {
                {type = "item", name = "wood", amount = 4},
                {type = "item", name = "tree-seed", amount = 2},
            }
        }
    else
        log("Tree "..name.." is not changed")
    end
end

local offshore_pump = data.raw["offshore-pump"]["offshore-pump"]
offshore_pump.energy_source = {
  type = "electric",
  usage_priority = "secondary-input"
}
offshore_pump.energy_usage = "50kW"



-- Deep copy the vanilla transport belt
local white_belt = table.deepcopy(data.raw["transport-belt"]["transport-belt"])

-- Give it a new internal name
white_belt.name = "white-transport-belt"

-- Make it slower (default is 0.03125, reduce it)
white_belt.speed = 0.015625

-- Recolor all belt sprites to white tint
local function apply_white_tint(belt_sprites)
  if not belt_sprites then return end
  for _, sprite in pairs(belt_sprites) do
    if sprite.hr_version then
      sprite.hr_version.tint = {r=1, g=1, b=1, a=1}
    end
    sprite.tint = {r=1, g=1, b=1, a=1}
  end
end

apply_white_tint(white_belt.belt_animation_set.animation_set.north)
apply_white_tint(white_belt.belt_animation_set.animation_set.east)
apply_white_tint(white_belt.belt_animation_set.animation_set.south)
apply_white_tint(white_belt.belt_animation_set.animation_set.west)

-- Register it
data:extend({white_belt})
