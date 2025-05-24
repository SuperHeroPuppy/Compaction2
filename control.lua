script.on_event(defines.events.on_entity_died, function(event)
	local entity = event.entity
	entity.surface.spill_item_stack(entity.position, { name = 'crash-site-spaceship', count = 1 }, true, 'player')
end, {
	{ filter = 'name', name = 'crash-site-spaceship' },
	{ filter = 'type', type = 'container',           mode = 'and' }
})

script.on_init(function()
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