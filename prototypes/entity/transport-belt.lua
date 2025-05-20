data:extend{
    {
        type = "transport-belt",
        name = "mk4-transport-belt",
        icon = "__Compaction2__/graphics/icons/mk4-transport-belt.png",
        icon_size = 32, icon_mipmaps = 1,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "mk4-transport-belt"},
        max_health = 170,
        corpse = "mk4-transport-belt-remnants",
        dying_explosion = "transport-belt-explosion",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        working_sound = {
            sound = {
                filename = "__base__/sound/transport-belt-working.ogg",
                volume = 0.4
            },
            persistent = true
        },
        animation_speed_coefficient = 32,
        animations = {
            filename = "__Compaction2__/graphics/entity/mk4-transport-belt/transport-belt-mk4.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 32,
            direction_count = 20,
            hr_version = {
                filename = "__Compaction2__/graphics/entity/mk4-transport-belt/hr-transport-belt-mk4.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 32,
                direction_count = 20,
                scale = 0.5
            }
        },
        belt_animation_set = {
            animation_set = {
                filename = "__Compaction2__/graphics/entity/mk4-transport-belt/transport-belt-mk4.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 32,
                direction_count = 20,
                hr_version = {
                    filename = "__Compaction2__/graphics/entity/mk4-transport-belt/hr-transport-belt-mk4.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 32,
                    direction_count = 20,
                    scale = 0.5
                }
            }
        },
        speed = 0.09375,
        connector_frame_sprites = transport_belt_connector_frame_sprites,
        circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
        circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
        circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
    },
    {
        type = "corpse",
        name = "mk4-transport-belt-remnants",
        icon = "__Compaction2__/graphics/icons/mk4-transport-belt.png",
        icon_size = 32, icon_mipmaps = 1,
        flags = {"placeable-neutral", "not-on-map"},
        subgroup = "transport-belt-remnants",
        order = "a-d-a",
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        tile_width = 1,
        tile_height = 1,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        animation = {
            filename = "__Compaction2__/graphics/entity/mk4-transport-belt/remnants/transport-belt-remnants-mk4.png",
            line_length = 1,
            width = 64,
            height = 64,
            frame_count = 1,
            direction_count = 4,
            shift = util.by_pixel(0, 0),
            hr_version = {
                filename = "__Compaction2__/graphics/entity/mk4-transport-belt/remnants/hr-transport-belt-remnants-mk4.png",
                line_length = 1,
                width = 128,
                height = 128,
                frame_count = 1,
                direction_count = 4,
                shift = util.by_pixel(0, 0),
                scale = 0.5
            }
        },
        ground_patch = {
            sheet = {
                filename = "__base__/graphics/entity/remnants/ground-patch.png",
                width = 32,
                height = 32,
                frame_count = 1,
                direction_count = 4,
                shift = util.by_pixel(0, 0),
                hr_version = {
                    filename = "__base__/graphics/entity/remnants/hr-ground-patch.png",
                    width = 64,
                    height = 64,
                    frame_count = 1,
                    direction_count = 4,
                    shift = util.by_pixel(0, 0),
                    scale = 0.5
                }
            }
        }
    },
    {
        type = "underground-belt",
        name = "mk4-underground-belt",
        icon = "__Compaction2__/graphics/icons/mk4-underground-belt.png",
        icon_size = 32, icon_mipmaps = 1,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "mk4-underground-belt"},
        max_health = 170,
        corpse = "mk4-underground-belt-remnants",
        dying_explosion = "underground-belt-explosion",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        working_sound = {
            sound = {
                filename = "__base__/sound/underground-belt-working.ogg",
                volume = 0.4
            },
            persistent = true
        },
        animation_speed_coefficient = 32,
        animations = {
            filename = "__Compaction2__/graphics/entity/mk4-underground-belt/underground-belt-mk4.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 32,
            direction_count = 20,
            hr_version = {
                filename = "__Compaction2__/graphics/entity/mk4-underground-belt/hr-underground-belt-mk4.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 32,
                direction_count = 20,
                scale = 0.5
            }
        },
        belt_animation_set = {
            animation_set = {
                filename = "__Compaction2__/graphics/entity/mk4-underground-belt/underground-belt-mk4.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 32,
                direction_count = 20,
                hr_version = {
                    filename = "__Compaction2__/graphics/entity/mk4-underground-belt/hr-underground-belt-mk4.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 32,
                    direction_count = 20,
                    scale = 0.5
                }
            }
        },
        speed = 0.09375,
        connector_frame_sprites = transport_belt_connector_frame_sprites,
        circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
        circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
        circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
    },
    {
        type = "corpse",
        name = "mk4-underground-belt-remnants",
        icon = "__Compaction2__/graphics/icons/mk4-underground-belt.png",
        icon_size = 32, icon_mipmaps = 1,
        flags = {"placeable-neutral", "not-on-map"},
        subgroup = "underground-belt-remnants",
        order = "a-d-a",
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        tile_width = 1,
        tile_height = 1,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        animation = {
            filename = "__Compaction2__/graphics/entity/mk4-underground-belt/remnants/underground-belt-remnants-mk4.png",
            line_length = 1,
            width = 64,
            height = 64,
            frame_count = 1,
            direction_count = 4,
            shift = util.by_pixel(0, 0),
            hr_version = {
                filename = "__Compaction2__/graphics/entity/mk4-underground-belt/remnants/hr-underground-belt-remnants-mk4.png",
                line_length = 1,
                width = 128,
                height = 128,
                frame_count = 1,
                direction_count = 4,
                shift = util.by_pixel(0, 0),
                scale = 0.5
            }
        },
        ground_patch = {
            sheet = {
                filename = "__base__/graphics/entity/remnants/ground-patch.png",
                width = 32,
                height = 32,
                frame_count = 1,
                direction_count = 4,
                shift = util.by_pixel(0, 0),
                hr_version = {
                    filename = "__base__/graphics/entity/remnants/hr-ground-patch.png",
                    width = 64,
                    height = 64,
                    frame_count = 1,
                    direction_count = 4,
                    shift = util.by_pixel(0, 0),
                    scale = 0.5
                }
            }
        }
    },
    {
        type = "splitter",
        name = "mk4-splitter",
        icon = "__Compaction2__/graphics/icons/mk4-splitter.png",
        icon_size = 32, icon_mipmaps = 1,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "mk4-splitter"},
        max_health = 170,
        corpse = "mk4-splitter-remnants",
        dying_explosion = "splitter-explosion",
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        working_sound = {
            sound = {
                filename = "__base__/sound/splitter-working.ogg",
                volume = 0.4
            },
            persistent = true
        },
        animation_speed_coefficient = 32,
        structure = {
            north = {
                filename = "__Compaction2__/graphics/entity/mk4-splitter/splitter-north-mk4.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 32,
                hr_version = {
                    filename = "__Compaction2__/graphics/entity/mk4-splitter/hr-splitter-north-mk4.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 32,
                    scale = 0.5
                }
            },
            east = {
                filename = "__Compaction2__/graphics/entity/mk4-splitter/splitter-east-mk4.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 32,
                hr_version = {
                    filename = "__Compaction2__/graphics/entity/mk4-splitter/hr-splitter-east-mk4.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 32,
                    scale = 0.5
                }
            },
            south = {
                filename = "__Compaction2__/graphics/entity/mk4-splitter/splitter-south-mk4.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 32,
                hr_version = {
                    filename = "__Compaction2__/graphics/entity/mk4-splitter/hr-splitter-south-mk4.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 32,
                    scale = 0.5
                }
            },
            west = {
                filename = "__Compaction2__/graphics/entity/mk4-splitter/splitter-west-mk4.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 32,
                hr_version = {
                    filename = "__Compaction2__/graphics/entity/mk4-splitter/hr-splitter-west-mk4.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 32,
                    scale = 0.5
                }
            }
        },
        belt_animation_set = {
            animation_set = {
                filename = "__Compaction2__/graphics/entity/mk4-splitter/splitter-north-mk4.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 32,
                hr_version = {
                    filename = "__Compaction2__/graphics/entity/mk4-splitter/hr-splitter-north-mk4.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 32,
                    scale = 0.5
                }
            }
        },
        speed = 0.09375,
        connector_frame_sprites = transport_belt_connector_frame_sprites,
        circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
        circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
        circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
    },
    {
        type = "corpse",
        name = "mk4-splitter-remnants",
        icon = "__Compaction2__/graphics/icons/mk4-splitter.png",
        icon_size = 32, icon_mipmaps = 1,
        flags = {"placeable-neutral", "not-on-map"},
        subgroup = "splitter-remnants",
        order = "a-d-a",
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        tile_width = 1,
        tile_height = 1,
        selectable_in_game = false,
        time_before_removed = 60 * 60 * 15, -- 15 minutes
        final_render_layer = "remnants",
        animation = {
            filename = "__Compaction2__/graphics/entity/mk4-splitter/remnants/splitter-remnants-mk4.png",
            line_length = 1,
            width = 64,
            height = 64,
            frame_count = 1,
            direction_count = 4,
            shift = util.by_pixel(0, 0),
            hr_version = {
                filename = "__Compaction2__/graphics/entity/mk4-splitter/remnants/hr-splitter-remnants-mk4.png",
                line_length = 1,
                width = 128,
                height = 128,
                frame_count = 1,
                direction_count = 4,
                shift = util.by_pixel(0, 0),
                scale = 0.5
            }
        },
        ground_patch = {
            sheet = {
                filename = "__base__/graphics/entity/remnants/ground-patch.png",
                width = 32,
                height = 32,
                frame_count = 1,
                direction_count = 4,
                shift = util.by_pixel(0, 0),
                hr_version = {
                    filename = "__base__/graphics/entity/remnants/hr-ground-patch.png",
                    width = 64,
                    height = 64,
                    frame_count = 1,
                    direction_count = 4,
                    shift = util.by_pixel(0, 0),
                    scale = 0.5
                }
            }
        }
    }
}