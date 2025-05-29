local ms = require("menu-simulations/menu-simulations")

data.raw["utility-constants"]["default"].main_menu_simulations = {}

local mms = data.raw["utility-constants"]["default"].main_menu_simulations

for k, v in pairs(ms) do
    mms[k] = v
end