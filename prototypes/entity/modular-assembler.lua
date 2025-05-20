local machine = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
machine.name = "modular-assembler"
machine.minable.result = "modular-assembler"
machine.crafting_speed = 0.4
machine.energy_usage = "3.2kJ"
machine.allowed_effects = {"consumption", "speed", "pollution", "productivity"}
machine.module_specification = {module_slots = 5}
machine.crafting_categories = {"modular-crafting"}

-- Check if animation layers exist before attempting to index
if machine.animation and machine.animation.layers then
    local tint = { r = 1, g = 0, b = 0, a = 1 }
    machine.animation.layers[1].tint = tint
end

data:extend{
    machine
}

data:extend{
    {
        type = "recipe-category",
        name = "modular-crafting"
    },
    {
        type = "item",
        name = "modular-assembler",
        icon = "__Compaction2__/graphics/icons/modular-assembler.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "production-machine",
        order = "d",
        place_result = "modular-assembler",
        stack_size = 50
    }
}
