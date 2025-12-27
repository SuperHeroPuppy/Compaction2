require("scripts/loot");
--require("scripts/cutscene"); -- Disabled cutscene for now due to it completely not functioning.
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
require("prototypes/entity/linked-transfer-port");
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