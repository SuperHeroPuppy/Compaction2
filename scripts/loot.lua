function AddLootToEntity(entityType, entityName, item, probability, countMin, countMax)
	if data.raw[entityType] ~= nil then
		if data.raw[entityType][entityName] ~= nil then
			if data.raw[entityType][entityName].loot == nil then
				data.raw[entityType][entityName].loot = {}
			end
			table.insert(data.raw[entityType][entityName].loot, { item = item, probability = probability, count_min = countMin, count_max = math.floor(countMax + 1) })
		end
	end
end

local function AddLootToVanillaEnemies()
	AddLootToEntity("unit", "small-spitter", "biter-organs", 0.33, 1, 1)
	AddLootToEntity("unit", "small-biter", "biter-organs", 0.33, 1, 1)

	AddLootToEntity("unit", "medium-spitter", "biter-organs", 0.66, 1, 2)
	AddLootToEntity("unit", "medium-biter", "biter-organs", 0.66, 1, 2)

	AddLootToEntity("unit", "big-spitter", "biter-organs", 0.83, 1, 5)
	AddLootToEntity("unit", "big-biter", "biter-organs", 0.83, 1, 5)

	AddLootToEntity("unit", "behemoth-spitter", "biter-organs", 1, 2, 20)
	AddLootToEntity("unit", "behemoth-biter", "biter-organs", 1, 2, 20)

	AddLootToEntity("turret", "little-worm-turret", "biter-organs", 1, 1, 5)
	AddLootToEntity("turret", "medium-worm-turret", "biter-organs", 1, 1, 10)
	AddLootToEntity("turret", "big-worm-turret", "biter-organs", 1, 1, 25)
	AddLootToEntity("turret", "behemoth-worm-turret", "biter-organs", 1, 10, 25)

	AddLootToEntity("unit-spawner", "biter-spawner", "biter-eggs", 1, 5, 20)
	AddLootToEntity("unit-spawner", "spitter-spawner", "biter-eggs", 1, 5, 20)
end

AddLootToVanillaEnemies()