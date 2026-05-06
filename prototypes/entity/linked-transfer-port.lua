local linked_transfer_port = table.deepcopy(data.raw["linked-container"]["linked-chest"])
linked_transfer_port.name = "linked-transfer-port"
linked_transfer_port.icon = "__Compaction2__/graphics/entity/icons/transfer-port.png"
linked_transfer_port.icon_size = 64
linked_transfer_port.minable = { mining_time = 0.2, result = "linked-transfer-port" }
linked_transfer_port.max_health = 200
linked_transfer_port.collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } }
linked_transfer_port.selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } }
linked_transfer_port.link_id = "crash-site-link"
linked_transfer_port.inventory_size = 5              -- only one slot
linked_transfer_port.gui_mode = "none"               -- prevents opening by player
linked_transfer_port.resistances = {
      { type = "fire",     percent = 100 },
      { type = "impact",   percent = 60 },
      { type = "physical", percent = 50 },
    }
if (mods["space-age"]) then
  linked_transfer_port.surface_conditions =
    {
      {
        property = "gravity",
        min = 10,
        max = 10
      },
      {
        property = "pressure",
        min = 1000,
        max = 1000
      }
    }
end

linked_transfer_port.picture = {
    layers = {
        {
            filename = "__Compaction2__/graphics/entity/transfer-port/transfer-port-base.png",
            width = 128,   -- full texture size
            height = 128,
            scale = 0.5,   -- shrink in-game
            hr_version = {
                filename = "__Compaction2__/graphics/entity/transfer-port/transfer-port-base.png",
                width = 128,
                height = 128,
                scale = 0.25  -- half of scale for high-res
            }
        },
        {
            filename = "__Compaction2__/graphics/entity/transfer-port/transfer-port-shadow.png",
            width = 128,
            height = 128,
            draw_as_shadow = true,
            scale = 0.5,
            hr_version = {
                filename = "__Compaction2__/graphics/entity/transfer-port/transfer-port-shadow.png",
                width = 128,
                height = 128,
                scale = 0.25,
                draw_as_shadow = true
            }
        }
    }
}


data:extend {
    linked_transfer_port,
    {
        type = "item",
        name = "linked-transfer-port",
        icon = "__Compaction2__/graphics/entity/icons/transfer-port.png",
        icon_size = 64,
        subgroup = "storage",
        place_result = "linked-transfer-port",
        stack_size = 1,
        weight = 10 * tons
    }
}
