data:extend{
    {
        type = "recipe",
        name = "pistol-scrap",
        category = "shredder-crafting",
        energy_required = 1.4,
        auto_recycle = false,
        enabled = false,
        subgroup = "scrap",
        ingredients = {
            {type="item", name="pistol", amount=1},
        },
        results = {{type="item", name="iron-scrap", amount = 5}}, 
    },
    {
        type = "recipe",
        name = "scrap-recycling-1",
        category = "shredder-crafting",
        energy_required = 1.4,
        auto_recycle = false,
        enabled = false,
        subgroup = "scrap",
        ingredients = {
            {type="item", name="iron-scrap", amount=5},
        },
        results = {{type="item", name="scrap", amount = 1}}, 
    },
    {
        type = "recipe",
        name = "scrap-recycling-2",
        category = "shredder-crafting",
        energy_required = 1.4,
        auto_recycle = false,
        enabled = false,
        subgroup = "scrap",
        ingredients = {
            {type="item", name="copper-scrap", amount=5},
        },
        results = {{type="item", name="scrap", amount = 1}}, 
    },
    {
        type = "recipe",
        name = "scrap-recycling-3",
        category = "shredder-crafting",
        energy_required = 1.4,
        auto_recycle = false,
        enabled = false,
        subgroup = "scrap",
        ingredients = {
            {type="item", name="glass-scrap", amount=5},
        },
        results = {{type="item", name="scrap", amount = 1}}, 
    },
    {
        type = "recipe",
        name = "scrap-recycling-4",
        category = "shredder-crafting",
        energy_required = 1.4,
        auto_recycle = false,
        enabled = false,
        subgroup = "scrap",
        ingredients = {
            {type="item", name="plastic-scrap", amount=5},
        },
        results = {{type="item", name="scrap", amount = 1}}, 
    },
    {
        type = "recipe",
        name = "scrap-recycling-5",
        category = "shredder-crafting",
        energy_required = 1.4,
        auto_recycle = false,
        enabled = false,
        subgroup = "scrap",
        ingredients = {
            {type="item", name="steel-scrap", amount=5},
        },
        results = {{type="item", name="scrap", amount = 1}}, 
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
                stack_size = scrap.stack_size
            }
        }
    end
end

local scrap_items = {}

-- Define scrap items
if (mods["space-age"]) then
    scrap_items = {
        {name = "iron-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-iron-1.png", stack_size = 50},
        {name = "copper-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-copper-1.png", stack_size = 50},
        {name = "glass-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-glass-1.png", stack_size = 50},
        {name = "plastic-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-plastic-1.png", stack_size = 50},
        {name = "steel-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-steel-1.png", stack_size = 50},
    }
else
    scrap_items = {
        {name = "iron-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-iron-1.png", stack_size = 150},
        {name = "copper-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-copper-1.png", stack_size = 150},
        {name = "glass-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-glass-1.png", stack_size = 150},
        {name = "plastic-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-plastic-1.png", stack_size = 150},
        {name = "steel-scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-steel-1.png", stack_size = 150},
        {name = "scrap", icon = "__Compaction2__/graphics/icons/scrap/scrap-1.png", stack_size = 150}
    }
end


-- Call the function to create the items
create_scrap_items(scrap_items)