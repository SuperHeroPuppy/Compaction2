local new_bot = table.deepcopy(data.raw["construction-robot"]["construction-robot"])
new_bot.name = "mini-robot"

new_bot.speed = 0.02

new_bot.max_energy = "10MJ"
new_bot.energy_per_move = "20kJ"
new_bot.energy_per_tick = "0.2kJ"

new_bot.minable.result = "mini-robot"

if new_bot.working and new_bot.working.hr_version then
    new_bot.working.hr_version.scale = 0.2
end
if new_bot.idle and new_bot.idle.hr_version then
    new_bot.idle.hr_version.scale = 0.2
end
if new_bot.in_motion and new_bot.in_motion.hr_version then
    new_bot.in_motion.hr_version.scale = 0.2
end

if new_bot.working then
    new_bot.working.scale = 0.2
end
if new_bot.idle then
    new_bot.idle.scale = 0.2
end
if new_bot.in_motion then
    new_bot.in_motion.scale = 0.2
end

data:extend{
    new_bot
}

data:extend{
    {
        type = "item",
        name = "mini-robot",
        icon = "__Compaction2__/graphics/entity/mini-robot.png",
        icon_size = 64, icon_mipmaps = 1,
        subgroup = "logistic-network",
        order = "1",
        stack_size = 25,
        place_result = "mini-robot"
    }
}
