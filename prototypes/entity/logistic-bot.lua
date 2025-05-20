local logistic_bot = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])
logistic_bot.name = "mini-logistic-robot-entity"

logistic_bot.speed = 0.02

logistic_bot.max_energy = "10MJ"
logistic_bot.energy_per_move = "20kJ"
logistic_bot.energy_per_tick = "0.2kJ"

logistic_bot.minable.result = "mini-logistic-robot"

if logistic_bot.idle and logistic_bot.idle.hr_version then
    logistic_bot.idle.hr_version.scale = 0.2
end
if logistic_bot.in_motion and logistic_bot.in_motion.hr_version then
    logistic_bot.in_motion.hr_version.scale = 0.2
end

if logistic_bot.idle then
    logistic_bot.idle.scale = 0.2
end
if logistic_bot.in_motion then
    logistic_bot.in_motion.scale = 0.2
end

if logistic_bot.idle_with_cargo and logistic_bot.idle_with_cargo.hr_version then
    logistic_bot.idle_with_cargo.hr_version.scale = 0.2
end
if logistic_bot.in_motion_with_cargo and logistic_bot.in_motion_with_cargo.hr_version then
    logistic_bot.in_motion_with_cargo.hr_version.scale = 0.2
end

if logistic_bot.idle_with_cargo then
    logistic_bot.idle_with_cargo.scale = 0.2
end
if logistic_bot.in_motion_with_cargo then
    logistic_bot.in_motion_with_cargo.scale = 0.2
end

data:extend{
    logistic_bot
}

data:extend{
    {
        type = "item",
        name = "mini-logistic-robot",
        icon = "__Compaction2__/graphics/entity/mini-logistic-robot.png",
        icon_size = 64, icon_mipmaps = 1,
        subgroup = "logistic-network",
        order = "2",
        stack_size = 25,
        place_result = "mini-logistic-robot-entity"
    }
}
