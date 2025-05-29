data:extend{
    {
        type = "recipe",
        name = "iron-scrap",
        category = "shredder-crafting",
        energy_required = 1.4,
        enabled = false,
        subgroup = "scrap",
        ingredients = {
            {type="item", name="pistol", amount=1},
        },
        results = {{type="item", name="iron-scrap", amount = 5}}, 
    }
}

local function create_scrap_items(scrap_items)
    for _, scrap in pairs(scrap_items) do
        data:extend{
            {
                type = "item",
                name = scrap.name,
                icon = scrap.icon,
                pictures =
                {
                    { size = 64, filename = scrap.icon, scale = 0.25, mipmap_count = 4 },
                    { size = 64, filename = string.gsub(scrap.icon, "1.png", "2.png"), scale = 0.25, mipmap_count = 4 },
                    { size = 64, filename = string.gsub(scrap.icon, "1.png", "3.png"), scale = 0.25, mipmap_count = 4 }
                },
                hidden = true,
                icon_size = 64, icon_mipmaps = 4,
                subgroup = "scrap",
                stack_size = 250
            }
        }
    end
end

-- Define your scrap items
local scrap_items = {
    {name = "iron-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-iron-1.png"},
    {name = "copper-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-copper-1.png"},
    {name = "glass-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-glass-1.png"},
    {name = "plastic-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-plastic-1.png"},
    {name = "steel-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-steel-1.png"},
    {name = "scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-1.png"}
}

-- Call the function to create the items
create_scrap_items(scrap_items)