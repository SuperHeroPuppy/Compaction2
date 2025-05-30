require("scripts/loot");
require("scripts/menu");

require("prototypes/other/scrap");
require("prototypes/entity/logos");

require("prototypes/items/items");
require("prototypes/items/alerts");
require("prototypes/items/crashsite");
require("prototypes/items/parts")

require("prototypes/recipes/recipes");

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

require("prototypes/fluids/fluids");

require("prototypes/item-group/item-group");

if not data.raw.resource["sulfur-ore"] then
    require("prototypes/ore/sulfur-ore");
end

data.raw.technology["sulfur-processing"] = nil
data.raw.technology["military"] = nil
data.raw.technology["uranium-mining"] = nil

require("prototypes/technology/technology");

table.insert(data.raw["lab"]["lab"].inputs, "flight-science-pack")

--table.insert(data.raw["lab"]["burner-lab"].inputs, "automation-science-pack")
--table.insert(data.raw["lab"]["burner-lab"].inputs, "logistic-science-pack")

for name, tree in pairs (data.raw["tree"]) do
    if string.find(name, "tree%-%d%d") then
        --log("changing the mining results of "..name)
        tree.minable = {
            mining_time = 1,
            results = {
                {type = "item", name = "wood", amount = 4},
                {type = "item", name = "tree-seeds", amount = 2},
            }
        }
    --else
        --log("Tree "..name.." is not changed")
    end
end