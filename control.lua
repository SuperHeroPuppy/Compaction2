script.on_event(defines.events.on_entity_died, function(event)
	local entity = event.entity
	entity.surface.spill_item_stack({position = entity.position, stack = { name = 'crash-site-spaceship', count = 1}, enable_looted = true, force = 'player'})
end, {
	{ filter = 'name', name = 'crash-site-spaceship' },
	{ filter = 'type', type = 'container',           mode = 'and' }
})

local new_ship_parts = {
  {
    name = "spaceship-research-lab",
    angle_deviation = 0.05,
    max_distance = 30,
    min_separation = 10,
    fire_count = 3,
    explosion_count = 1,
    force = "player",
  },
}

local function add_to_crash_site()
  if
    not remote.interfaces.freeplay.get_disable_crashsite
    or remote.call("freeplay", "get_disable_crashsite")
    or remote.call("freeplay", "get_init_ran")
  then
    return
  end

  local ship_parts = remote.call("freeplay", "get_ship_parts")
  for _, part in pairs(new_ship_parts) do
    ship_parts[#ship_parts + 1] = part
  end
  remote.call("freeplay", "set_ship_parts", ship_parts)

  local nauvis = game.get_surface("nauvis")
  if nauvis then
    local tree_setting = nauvis.map_gen_settings.autoplace_controls.trees
    if not tree_setting or tree_setting.size == 0 then
      local items = remote.call("freeplay", "get_ship_items")
      items["tree-seeds"] = 20
      remote.call("freeplay", "set_ship_items", items)
    end
  end
end

script.on_init(function()
  if not remote.interfaces.freeplay then
    return
  end
  add_to_crash_site()
  for _, interface in pairs{"silo_script", "better-victory-screen"} do
    if remote.interfaces[interface] and remote.interfaces[interface]["set_no_victory"] then
      remote.call(interface, "set_no_victory", true)
    end
  end
end)

script.on_configuration_changed(function()
  for _, interface in pairs{"silo_script", "better-victory-screen"} do
    if remote.interfaces[interface] and remote.interfaces[interface]["set_no_victory"] then
      remote.call(interface, "set_no_victory", true)
    end
  end
end)

