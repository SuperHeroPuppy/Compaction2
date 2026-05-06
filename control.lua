local math2d = require("__core__/lualib/math2d")

local CRASH_SITE_INTERIOR = "crash-site-interior"
local CRASH_SITE_INTERIOR_POWER_POLE = "crash-site-interior-power-pole"
local CRASH_SITE_POWER_LINK = "crash-site-power-link"
local CRASH_SITE_POWER_BUFFER = 240000
local CRASH_SITE_POWER_TICK_INTERVAL = 60

script.on_event(defines.events.on_entity_died, function(event)
  local entity = event.entity
  entity.surface.spill_item_stack({
    position = entity.position,
    stack = { name = 'crash-site-spaceship', count = 1 },
    enable_looted = true,
    force =
    'player'
  })
end, {
  { filter = 'name', name = 'crash-site-spaceship' },
  { filter = 'type', type = 'container',           mode = 'and' }
})

local new_ship_parts = {
  {
    name = "crash-site-chest-1",
    angle_deviation = 0.05,
    max_distance = 5,
    min_separation = 5,
    fire_count = 0,
    explosion_count = 0,
    force = "player",
  },
  {
    name = "linked-transfer-port",
    angle_deviation = 0.02,
    max_distance = 2,
    min_separation = 6,
    fire_count = 0,
    explosion_count = 0,
    force = "player",
  },
  {
    name = "spaceship-research-lab",
    angle_deviation = 0.05,
    max_distance = 30,
    min_separation = 10,
    fire_count = 3,
    explosion_count = 1,
    force = "player",
  },
  {
    name = "spaceship-reactor",
    angle_deviation = 0.2,
    max_distance = 15,
    min_separation = 5,
    fire_count = 3,
    explosion_count = 1,
    force = "player",
  },
}

local function add_surface_to_crash_site()
  local function make_reactor(surface, pos)
    if #surface.find_entities_filtered { name = "spaceship-reactor" } == 0 then
      local e = surface.create_entity { name = "spaceship-reactor", position = pos, force = "player" }
      e.minable = false
      e.destructible = false
      e.energy = 0
    end
  end

  local function make_power_pole(surface, pos)
    if #surface.find_entities_filtered { name = CRASH_SITE_INTERIOR_POWER_POLE } == 0 then
      local e = surface.create_entity { name = CRASH_SITE_INTERIOR_POWER_POLE, position = pos, force = "player" }
      e.minable = false
      e.destructible = false
    end
  end

  local existing_surface = game.surfaces[CRASH_SITE_INTERIOR]
  if existing_surface then
    make_reactor(existing_surface, { 8, 8 })
    make_power_pole(existing_surface, { 0, 0 })
    return
  end

  local settings = {
    autoplace_settings = {
      tile = {
        treat_missing_as_default = false,
        settings = { ["out-of-map"] = {} }
      },
      entity = {
        treat_missing_as_default = false
      },
      decorative = {
        treat_missing_as_default = false
      }
    }
  }

  local new_surface = game.create_surface(CRASH_SITE_INTERIOR, settings)
  new_surface.request_to_generate_chunks({ 0, 0 }, 2)
  new_surface.force_generate_chunk_requests()

  if new_surface then
    local tiles = {}

    for x = -12, 12 do
      for y = -12, 12 do
        table.insert(tiles, { name = "black-refined-concrete", position = { x, y } })
      end
    end
    new_surface.set_tiles(tiles)

    local function make_wall(pos)
      local e = new_surface.create_entity { name = "stone-wall", position = pos, force = "neutral" }
      e.minable = false
      e.destructible = false
    end

    local function make_exit(pos)
      local e = new_surface.create_entity { name = "crash-site-exit", position = pos, force = "neutral" }
      e.minable = false
      e.destructible = false
    end

    local function make_linked_chest(pos)
      local e = new_surface.create_entity { name = "linked-transfer-port", position = pos, force = "player" }
    end

    -- Top wall
    for x = -12, 12 do
      make_wall({ x, -12 })
    end

    -- Bottom wall with exit at the middle
    for x = -12, 12 do
      if x == 0 then
        make_exit({ x, 12 })
      elseif x == 1 or x == -1 then
        -- leave gap for exit width
      else
        make_wall({ x, 12 })
      end
    end

    -- Left and right walls
    for y = -11, 11 do
      make_wall({ -12, y })
      make_wall({ 12, y })
    end

    -- Add linked chest in top-left interior corner
    make_linked_chest({ -11, -11 })
    make_reactor(new_surface, { 8, 8 })
    make_power_pole(new_surface, { 0, 0 })
  end
end

local function ensure_crash_site_power_links()
  local nauvis = game.surfaces.nauvis
  if not nauvis then return end

  for _, crash_site in pairs(nauvis.find_entities_filtered { name = "crash-site-spaceship" }) do
    local links = nauvis.find_entities_filtered {
      name = CRASH_SITE_POWER_LINK,
      area = {
        { crash_site.position.x - 0.5, crash_site.position.y - 0.5 },
        { crash_site.position.x + 0.5, crash_site.position.y + 0.5 },
      },
    }

    if #links == 0 then
      local link = nauvis.create_entity {
        name = CRASH_SITE_POWER_LINK,
        position = crash_site.position,
        force = crash_site.force,
      }
      link.minable = false
      link.destructible = false
      link.energy = 0
    end
  end
end

local function power_crash_site_interior()
  local nauvis = game.surfaces.nauvis
  local interior = game.surfaces[CRASH_SITE_INTERIOR]
  if not nauvis or not interior then return end

  local outside_link = nauvis.find_entities_filtered { name = CRASH_SITE_POWER_LINK }[1]
  local inside_reactor = interior.find_entities_filtered { name = "spaceship-reactor" }[1]
  if not outside_link or not inside_reactor then return end

  if outside_link.energy >= CRASH_SITE_POWER_BUFFER then
    outside_link.energy = outside_link.energy - CRASH_SITE_POWER_BUFFER
    inside_reactor.energy = CRASH_SITE_POWER_BUFFER
  else
    inside_reactor.energy = 0
  end
end

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
    local infoitems = remote.call("freeplay", "get_ship_items")
    infoitems["info"] = 1
    remote.call("freeplay", "set_ship_items", infoitems)
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

  add_surface_to_crash_site()
  add_to_crash_site()
  ensure_crash_site_power_links()

  for _, interface in pairs { "silo_script", "better-victory-screen" } do
    if remote.interfaces[interface] and remote.interfaces[interface]["set_no_victory"] then
      remote.call(interface, "set_no_victory", true)
    end
  end
end)

script.on_configuration_changed(function()
  add_surface_to_crash_site()
  ensure_crash_site_power_links()

  for _, interface in pairs { "silo_script", "better-victory-screen" } do
    if remote.interfaces[interface] and remote.interfaces[interface]["set_no_victory"] then
      remote.call(interface, "set_no_victory", true)
    end
  end
end)

script.on_nth_tick(CRASH_SITE_POWER_TICK_INTERVAL, function()
  ensure_crash_site_power_links()
  power_crash_site_interior()
end)

-- Event to limit linked-transfer-port to one per surface
script.on_event(
  { defines.events.on_built_entity, defines.events.on_robot_built_entity },
  function(event)
    local entity = event.created_entity or event.entity
    if not entity or not entity.valid then return end

    if entity.name ~= "linked-transfer-port" then return end

    local surface = entity.surface

    -- ONE PER SURFACE RULE
    local existing = surface.find_entities_filtered { name = "linked-transfer-port" }
    if #existing > 1 then
      if event.player_index then
        local player = game.get_player(event.player_index)
        if player and player.valid then
          player.insert { name = "linked-transfer-port", count = 1 }
          player.print("You can only have one linked-transfer-port per surface.")
        end
      end
      entity.destroy()
      return
    end

    -- NAUVIS-SPECIFIC RESTRICTION
    if surface == game.surfaces.nauvis then
      local pos = entity.position

      -- Search for crash site within 5 tiles
      local crash_sites = surface.find_entities_filtered {
        name = "crash-site-spaceship",
        area = {
          { pos.x - 5, pos.y - 5 },
          { pos.x + 5, pos.y + 5 }
        }
      }

      if #crash_sites == 0 then
        -- Invalid placement
        if event.player_index then
          local player = game.get_player(event.player_index)
          if player and player.valid then
            player.insert { name = "linked-transfer-port", count = 1 }
            player.print("linked-transfer-port must be built within 5 tiles of the crash-site-spaceship.")
          end
        end
        entity.destroy()
        return
      end
    end
  end
)

script.on_event(defines.events.on_player_changed_position, function(event)
  local player = game.get_player(event.player_index)
  if not player then return end

  if player.controller_type ~= defines.controllers.character then return end

  -- Entrance: keep as-is
  local crash_site = player.surface.find_entities_filtered { name = "crash-site-spaceship" }[1]
  if crash_site then
    local bbox = crash_site.bounding_box
    local expanded_bbox = {
      left_top = { x = bbox.left_top.x - 0.5, y = bbox.left_top.y - 0.5 },
      right_bottom = { x = bbox.right_bottom.x + 0.5, y = bbox.right_bottom.y + 0.5 }
    }

    if math2d.bounding_box.contains_point(expanded_bbox, player.position) then
      local target_surface = game.surfaces[CRASH_SITE_INTERIOR]
      local target_position = { x = 0, y = 10 }
      player.teleport(target_position, target_surface)
    end
  end

  -- Exit: teleport relative to crash site position on nauvis
  local crash_site_exit = player.surface.find_entities_filtered { name = "crash-site-exit" }[1]
  if crash_site_exit then
    local bbox = crash_site_exit.bounding_box
    local expanded_bbox = {
      left_top = { x = bbox.left_top.x - 1, y = bbox.left_top.y - 1 },
      right_bottom = { x = bbox.right_bottom.x + 1, y = bbox.right_bottom.y + 1 }
    }

    if math2d.bounding_box.contains_point(expanded_bbox, player.position) then
      local nauvis = game.surfaces.nauvis
      if nauvis then
        -- Find the single crash site
        local crash_site_on_nauvis = nauvis.find_entities_filtered { name = "crash-site-spaceship" }[1]
        if crash_site_on_nauvis then
          local crash_pos = crash_site_on_nauvis.position
          local target_position = {
            x = crash_pos.x,
            y = crash_pos.y + 6 -- relative offset
          }
          player.teleport(target_position, nauvis)
        end
      end
    end
  end
end)
