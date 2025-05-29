local hasNonFurnaceFurnace = false

for name, _ in pairs(data.raw.furnace) do
    if (not string.find(name, "furnace")) then
        hasNonFurnaceFurnace = true
    end
end

if (not hasNonFurnaceFurnace) then
    --add a useless furnace so the game doesn't complain when we remove them later
    local uselessFurnace = table.deepcopy(data.raw["furnace"]["stone-furnace"])
    uselessFurnace.name = "useless-furnace"
    uselessFurnace.hidden = true
    uselessFurnace.next_upgrade = nil
    data:extend{uselessFurnace}
end

--replace all furnaces with assemblers with the same properties as the old furnace, so you can pick recipes
for name, _ in pairs(data.raw.furnace) do
    if (string.find(name, "furnace") and name ~= "useless-furnace") then --check to make sure it's a furnace, and not something else that uses the furnace prototype to avoid recipe selection
        local furnace = util.table.deepcopy(data.raw.furnace[name])
        furnace.type = "assembling-machine"
        data:extend{furnace}
        data.raw["furnace"][name] = nil --disable default version of furnace
    else
        hasNonFurnaceFurnace = true
    end
end

for name, _ in pairs(data.raw.furnace) do
    if (string.find(name, "furnace") and name ~= "useless-furnace") then --check to make sure it's a furnace, and not something else that uses the furnace prototype to avoid recipe selection
        data.raw["furnace"][name] = nil --disable default version of furnace
    end
end

--confirm change