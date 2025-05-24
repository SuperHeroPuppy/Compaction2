local sims = {}

sims.Compaction2_1 = {
    checkboard = false,
    save = "__Compaction2__/menu-simulations/1.zip",
    length = 1200,
    init =
    [[
      game.simulation.camera_position = {73, 56}
      game.simulation.camera_zoom = 1
    ]],
    update = [[

    ]]
}

sims.Compaction2_2 = {
  checkboard = false,
  save = "__Compaction2__/menu-simulations/1.zip",
  length = 1200,
  init =
  [[
    game.simulation.camera_position = {77, -12}
    game.simulation.camera_zoom = 1
  ]],
  update = [[

  ]]
}

sims.Compaction2_3 = {
  checkboard = false,
  save = "__Compaction2__/menu-simulations/1.zip",
  length = 1700,
  init =
  [[
    game.simulation.camera_position = {239, -19}
    game.simulation.camera_zoom = 1
  ]],
  update = [[

  ]]
}

return sims

--game.simulation.tick_paused = false

--game.simulation.surfaces.nauvis.daytime = 0
