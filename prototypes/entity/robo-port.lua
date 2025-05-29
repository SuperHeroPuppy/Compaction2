local function scale_graphic(graphic, scale)
    if graphic.layers then
        for _, layer in pairs(graphic.layers) do
            scale_graphic(layer, scale)
        end
    else
        if graphic.hr_version then
            scale_graphic(graphic.hr_version, scale)
        end

        graphic.scale = (graphic.scale or 1) * scale

        if graphic.shift then
            graphic.shift[1] = graphic.shift[1] * scale
            graphic.shift[2] = graphic.shift[2] * scale
        end
    end
end

local new_port = table.deepcopy(data.raw["roboport"]["roboport"])
new_port.name = "mini-roboport"
new_port.minable.result = "mini-roboport"
new_port.logistics_radius = new_port.logistics_radius * .5
new_port.construction_radius = new_port.construction_radius * .5
new_port.collision_box = {{-0.9,-0.9},{0.9,0.9}} -- the default box is {{-1.7,-1.7},{1.7,1.7}},  1.7 up down left right
new_port.selection_box = {{-1,-1},{1,1}}
new_port.robot_slots_count = 5
local scale = .4

scale_graphic(new_port.base, scale)
scale_graphic(new_port.base_patch, scale)
scale_graphic(new_port.base_animation, scale)
scale_graphic(new_port.door_animation_up, scale)
scale_graphic(new_port.door_animation_down, scale)

data:extend{
    new_port
}

data:extend{
    {
        type = "item",
        name = "mini-roboport",
        icon = "__Compaction2__/graphics/entity/mini-roboport.png",
        icon_size = 64, icon_mipmaps = 1,
        subgroup = "logistic-network",
        order = "3",
        stack_size = 5,
        place_result = "mini-roboport"
    }
    
}
