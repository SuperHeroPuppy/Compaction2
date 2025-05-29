data.raw.technology["robotics"].prerequisites = {"electric-engine", "battery", "flight-controller-tech"}
data.raw.technology["stone-wall"].prerequisites = {"world-processing-tech"}
data.raw.technology["gate"].prerequisites = {"world-processing-tech", "stone-wall"}
data.raw.technology["lamp"].prerequisites = {"glass-working-tech"}
data.raw.technology["landfill"].prerequisites = {"world-processing-tech", "logistic-science-pack"}
data.raw.technology["logistics"].prerequisites = {"automation"}
data.raw.technology["logistic-science-pack"].prerequisites = {"automation", "logistics"}
data.raw.technology["gun-turret"].prerequisites = {"military"}
data.raw.technology["automation"].prerequisites = {"electronics"}
data.raw.technology["fast-inserter"].prerequisites = {"automation"}
data.raw.technology["electronics"].prerequisites = {}
data.raw.technology["steel-axe"].prerequisites = {"world-processing-tech"}
data.raw.technology["concrete"].prerequisites = {"world-processing-tech", "logistic-science-pack"}
data.raw.technology["solar-energy"].prerequisites = {"world-processing-tech", "lamp", "battery", "aquaelixir-tech"}
data.raw.technology["laser"].prerequisites = {"world-processing-tech", "lamp", "battery", "chemical-science-pack"}
data.raw.technology["explosives"].prerequisites = {"world-processing-tech", "sulfur-processing"}
data.raw.technology["atomic-bomb"].prerequisites = {"rocket-casing-tech", "rocketry", "kovarex-enrichment-process","military-4","rocket-control-unit"}
data.raw.technology["rocketry"].prerequisites = {"rocket-casing-tech", "explosives", "flammables", "military-science-pack"}
data.raw.technology["steel-processing"].prerequisites = {"carbon-processing-tech"}
data.raw.technology["military-2"].prerequisites = {"logistic-science-pack", "military", "bullet-tech", "steel-processing"}
data.raw.technology["military-science-pack"].prerequisites = {"carbon-processing-tech", "military-2"}
data.raw.technology["construction-robotics"].prerequisites = {"robotics", "flight-science-pack-tech", "computronics-tech"}
data.raw.technology["logistic-robotics"].prerequisites = {"robotics", "flight-science-pack-tech", "computronics-tech"}
data.raw.technology["logistic-system"].prerequisites = {"robotics", "flight-science-pack-tech", "utility-science-pack", "computronics-tech"}


if (mods["space-age"]) then
    data.raw.technology["rocket-silo"].prerequisites = {
    "world-processing-tech",
    "rocketry",
    "processing-unit",
    "rocket-control-unit",
    "rocket-fuel",
    "concrete",
    "flight-science-pack-tech",
    "smart-battery-tech",
}
else
    data.raw.technology["rocket-silo"].prerequisites = {
        "world-processing-tech",
        "rocketry",
        "rocket-control-unit",
        "rocket-fuel",
        "concrete",
        "flight-science-pack-tech",
        "smart-battery-tech",
        "solar-energy",
        "electric-energy-accumulators",
        "production-science-pack"
    }
end

data.raw.technology["electronics"].effects = data.raw.technology["electronics"].effects or {}
local new_effects1 = data.raw.technology["logistics"].effects
local new_effects2 = data.raw.technology["automation"].effects
local new_effects3 = data.raw.technology["solar-energy"].effects
local new_effects4 = data.raw.technology["logistic-science-pack"].effects
local new_effects5 = data.raw.technology["automation-science-pack"].effects
table.insert(new_effects1, {type = "unlock-recipe", recipe = "transport-belt"})
table.insert(new_effects2, {type = "unlock-recipe", recipe = "inserter"})
table.insert(new_effects3, {type = "unlock-recipe", recipe = "photovoltaic"})
table.insert(new_effects4, {type = "unlock-recipe", recipe = "lab"})
table.insert(new_effects5, {type = "unlock-recipe", recipe = "empty-science-pack"})

local function add_science_pack_to_difficulty(difficulty, name, count)
    table.insert(difficulty.unit.ingredients, {name, count})
end

table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories,"complex-crafting")

--local function add_science_pack(technology, name, count)
--    if technology.normal or technology.expensive then
--        if technology.normal then
--            add_science_pack_to_difficulty(technology.normal, name, count)
--        end
--        if technology.expensive then
--            add_science_pack_to_difficulty(technology.expensive, name, count)
--        end
--    else
--        add_science_pack_to_difficulty(technology, name, count)
--    end
--end


local function add_science_pack(technology, name, count)
    add_science_pack_to_difficulty(technology, name, count)
end


add_science_pack(data.raw["technology"]["robotics"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["rocket-silo"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["logistic-robotics"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["construction-robotics"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["logistic-system"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["atomic-bomb"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["personal-roboport-equipment"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["personal-roboport-mk2-equipment"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["worker-robots-storage-1"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["worker-robots-storage-2"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["worker-robots-storage-3"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["worker-robots-speed-1"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["worker-robots-speed-2"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["worker-robots-speed-3"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["worker-robots-speed-4"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["worker-robots-speed-5"], "flight-science-pack", 1)
add_science_pack(data.raw["technology"]["worker-robots-speed-6"], "flight-science-pack", 1)


data.raw.recipe["transport-belt"].enabled = false
data.raw.recipe["inserter"].enabled = false
data.raw.recipe["light-armor"].enabled = false
data.raw.recipe["lab"].enabled = false
data.raw.recipe["electronic-circuit"].enabled = false
data.raw.recipe["electric-mining-drill"].enabled = false
data.raw.recipe["firearm-magazine"].enabled = false
data.raw.recipe["iron-gear-wheel"].enabled = false

--data.raw.recipe["electronic-circuit"].normal.enabled = false
--data.raw.recipe["electronic-circuit"].expensive.enabled = false
--data.raw.recipe["electric-mining-drill"].expensive.enabled = false
--data.raw.recipe["electric-mining-drill"].normal.enabled = false


data.raw.item["rocket-silo"].subgroup = "space-related"
data.raw.item["cargo-landing-pad"].subgroup = "space-related"

data.raw.recipe["flying-robot-frame"] = {
    type = "recipe",
    name = "flying-robot-frame",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "steel-plate", amount = 1},
        {type = "item", name = "electric-engine-unit", amount = 1},
        {type = "item", name = "battery", amount = 2},
        {type = "item", name = "flight-controller", amount = 1},
    },
    results = {{type = "item", name = "flying-robot-frame", amount = 1}},
    allow_productivity = true
}

data.raw.recipe["landfill"] = {
    type = "recipe",
    name = "landfill",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "sand", amount = 3},
        {type = "item", name = "gravel", amount =  5},
        {type = "item", name = "crushed-stone", amount =  5},
    }, 
    results = {{type = "item", name = "landfill", amount = 1}},
    allow_productivity = true

}

data.raw.recipe["offshore-pump"] = {
    type = "recipe",
    name = "offshore-pump",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "iron-gear-wheel", amount = 3},
        {type = "item", name = "pipe", amount = 2},
        {type = "item", name = "iron-plate", amount =  5},
        {type = "item", name = "basic-circuit", amount =  5},
    },
    results = {{type = "item", name = "offshore-pump", amount = 1}},
    allow_productivity = true
}

data.raw.recipe["solar-panel"] = {
    type = "recipe",
    name = "solar-panel",
    category = "advanced-crafting",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "battery", amount = 2},
        {type = "item", name = "steel-plate", amount =  5},
        {type = "item", name = "photovoltaic", amount =  8}
    },
    results = {{type = "item", name = "solar-panel", amount = 1}},
    allow_productivity = true
}

data.raw.recipe["laser-turret"] = {
    type = "recipe",
    name = "laser-turret",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "glass", amount = 3},
        {type = "item", name = "battery", amount =  12},
        {type = "item", name = "steel-plate", amount =  20},
        {type = "item", name = "electronic-circuit", amount =  20},
    },
    results = {{type = "item", name = "laser-turret", amount = 1}},
    allow_productivity = true
}

data.raw.recipe["small-lamp"] = {
    type = "recipe",
    name = "small-lamp",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "glass", amount = 3},
        {type = "item", name = "iron-plate", amount = 1},
        {type = "item", name = "electronic-circuit", amount = 2},
    },
    results = {{type = "item", name = "small-lamp", amount = 1}},
    allow_productivity = true
}

data.raw.recipe["rocket-part"].ingredients =
{
    {type = "item", name = "rocket-control-unit", amount = 10},
    {type = "item", name = "low-density-structure", amount = 10},
    {type = "item", name = "rocket-fuel", amount = 10},
}

data.raw.recipe["atomic-bomb"].ingredients =
{
    {type = "item", name = "explosives", amount = 10},
    {type = "item", name = "rocket-control-unit", amount = 10},
    {type = "item", name = "uranium-235", amount = 35},
    {type = "item", name = "rocket-casing", amount = 1},
}

data.raw.recipe["rocket"].ingredients =
{
    {type = "item", name = "explosives", amount = 1},
    {type = "item", name = "rocket-casing", amount = 1},
    {type = "item", name = "iron-plate", amount = 2},
    {type = "item", name = "electronic-circuit", amount = 1},
}

data.raw.recipe["stone-wall"].ingredients =
{
    {type = "item", name = "stone-brick", amount =  5},
    {type = "item", name = "gravel", amount = 4},
}

data.raw.recipe["gate"].ingredients =
{
    {type = "item", name = "stone-wall", amount = 1},
    {type = "item", name = "gravel", amount = 3},
    {type = "item", name = "electronic-circuit", amount = 2},
    {type = "item", name = "steel-plate", amount = 3},
}

data.raw.recipe["automation-science-pack"].ingredients =
{
    {type = "item", name = "copper-plate", amount = 1},
    {type = "item", name = "iron-gear-wheel", amount = 3},
    {type = "item", name = "empty-science-pack", amount = 1},
}

data.raw.recipe["logistic-science-pack"].ingredients =
{
    {type = "item", name = "inserter", amount = 1},
    {type = "item", name = "transport-belt", amount = 2},
    {type = "item", name = "empty-science-pack", amount = 1},
}

data.raw.recipe["military-science-pack"].ingredients =
{
    {type = "item", name = "piercing-rounds-magazine", amount =  5},
    {type = "item", name = "light-armor", amount = 1},
    {type = "item", name = "carbon-fiber", amount = 4},
    {type = "item", name = "empty-science-pack", amount = 1},
}

data.raw.recipe["chemical-science-pack"].ingredients =
{
    {type = "item", name = "advanced-circuit", amount = 1},
    {type = "item", name = "engine-unit", amount = 1},
    {type = "item", name = "sulfur", amount =  5},
    {type = "item", name = "empty-science-pack", amount = 1},
}

data.raw.recipe["chemical-science-pack"].ingredients =
{
    {type = "item", name = "advanced-circuit", amount = 1},
    {type = "item", name = "engine-unit", amount = 1},
    {type = "item", name = "sulfur", amount =  5},
    {type = "item", name = "empty-science-pack", amount = 1},
}

data.raw.recipe["production-science-pack"].ingredients =
{
    {type = "item", name = "electric-furnace", amount =  5},
    {type = "item", name = "productivity-module", amount = 1},
    {type = "item", name = "rail", amount =  5},
    {type = "item", name = "empty-science-pack", amount = 1},
}

data.raw.recipe["utility-science-pack"].ingredients =
{
    {type = "item", name = "flying-robot-frame", amount = 1},
    {type = "item", name = "processing-unit", amount = 1},
    {type = "item", name = "low-density-structure", amount =  5},
    {type = "item", name = "empty-science-pack", amount = 1},
}

data.raw.recipe["burner-inserter"].ingredients =
{
    {type = "item", name = "iron-plate", amount = 1},
    {type = "item", name = "metal-bearing", amount = 1},
    {type = "item", name = "wooden-chunk", amount = 1},
}

data.raw.recipe["inserter"].ingredients =
{
    {type = "item", name = "burner-inserter", amount = 1},
    {type = "item", name = "metal-bearing", amount = 1},
    {type = "item", name = "basic-circuit", amount = 2},
}

data.raw.recipe["transport-belt"].ingredients =
{
    {type = "item", name = "iron-plate", amount = 1},
    {type = "item", name = "metal-bearing", amount = 1},
}

data.raw.recipe["long-handed-inserter"].ingredients =
{
    {type = "item", name = "inserter", amount = 2},
    {type = "item", name = "metal-bearing", amount = 1},
    {type = "item", name = "electronic-circuit", amount = 2},
}

data.raw.recipe["fast-inserter"].ingredients =
{
    {type = "item", name = "inserter", amount = 1},
    {type = "item", name = "metal-bearing", amount = 2},
    {type = "item", name = "electronic-circuit", amount = 2},
}

data.raw.recipe["steel-plate"].ingredients =
{
    {type = "item", name = "carbon", amount = 1},
    {type = "item", name = "iron-plate", amount =  5},
}

--data.raw.recipe["steel-plate"].normal.ingredients =
--{
--    {"carbon", amount = 1},
--    {"iron-plate", amount =  5},
--}

--data.raw.recipe["steel-plate"].expensive.ingredients =
--{
--    {"carbon", amount = 3},
--    {"iron-plate", amount = 7},
--}

data.raw.recipe["light-armor"].ingredients =
{
    {type = "item", name = "iron-plate", amount = 7},
    {type = "item", name = "carbon-fiber", amount = 4},
}

data.raw.recipe["heavy-armor"].ingredients =
{
    {type = "item", name = "copper-plate", amount =  8},
    {type = "item", name = "iron-plate", amount = 7},
    {type = "item", name = "steel-plate", amount = 7},
    {type = "item", name = "carbon-fiber", amount = 10},
}

data.raw.recipe["modular-armor"].ingredients =
{
    {type = "item", name = "heavy-armor", amount = 1},
    {type = "item", name = "iron-plate", amount = 2},
    {type = "item", name = "carbon-fiber", amount =  20},
    {type = "item", name = "advanced-circuit", amount = 25},
}

data.raw.recipe["electronic-circuit"].ingredients =
{
    {type = "item", name = "copper-cable", amount = 1},
    {type = "item", name = "iron-plate", amount = 2},
    {type = "item", name = "electronic-parts", amount = 2},
}

data.raw.recipe["firearm-magazine"].ingredients =
{
    {type = "item", name = "magazine", amount = 1},
    {type = "item", name = "bullets", amount = 2},
}

data.raw.recipe["shotgun-shell"].ingredients =
{
    {type = "item", name = "shotgun-hulls", amount = 1},
    {type = "item", name = "gunpowder", amount = 2},
}

data.raw.recipe["piercing-rounds-magazine"].ingredients =
{
    {type = "item", name = "magazine", amount = 1},
    {type = "item", name = "steel-plate", amount = 4},
    {type = "item", name = "bullets", amount = 3},
}

data.raw.recipe["uranium-rounds-magazine"].ingredients =
{
    {type = "item", name = "magazine", amount = 1},
    {type = "item", name = "uranium-235", amount = 1},
    {type = "item", name = "bullets", amount =  5},
}

data.raw.recipe["storage-chest"].ingredients =
{
    {type = "item", name = "electronic-storage", amount = 1},
    {type = "item", name = "steel-chest", amount = 1},
}

data.raw.recipe["passive-provider-chest"].ingredients =
{
    {type = "item", name = "electronic-storage", amount = 1},
    {type = "item", name = "steel-chest", amount = 1},
    {type = "item", name = "advanced-circuit", amount = 1}
}

data.raw.recipe["active-provider-chest"].ingredients =
{
    {type = "item", name = "electronic-storage", amount = 1},
    {type = "item", name = "steel-chest", amount = 1},
    {type = "item", name = "advanced-circuit", amount = 2}
}

data.raw.recipe["requester-chest"].ingredients =
{
    {type = "item", name = "electronic-storage", amount = 1},
    {type = "item", name = "steel-chest", amount = 1},
    {type = "item", name = "advanced-circuit", amount = 2},
    {type = "item", name = "electronic-microchip", amount = 1}
}

data.raw.recipe["buffer-chest"].ingredients =
{
    {type = "item", name = "electronic-storage", amount = 1},
    {type = "item", name = "steel-chest", amount = 1},
    {type = "item", name = "electronic-microchip", amount = 1}
}

data.raw.recipe["logistic-robot"].ingredients =
{
    {type = "item", name = "advanced-electronic-microchip", amount = 1},
    {type = "item", name = "flying-robot-frame", amount = 1}
}

data.raw.recipe["construction-robot"].ingredients =
{
    {type = "item", name = "electronic-microchip", amount = 1},
    {type = "item", name = "flying-robot-frame", amount = 1}
}