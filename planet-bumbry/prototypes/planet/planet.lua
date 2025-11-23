local planet_map_gen = require("__planet-bumbry__.prototypes.planet.bumbry-map-gen")
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

local planet = {
    type = "planet",
    name = "bumbry",
    icon = "__planet-bumbry__/graphics/icons/starmap-planet-bumbry.png",
    starmap_icon = "__planet-bumbry__/graphics/icons/starmap-planet-bumbry.png",
    starmap_icon_size = 512,
    icon_size = 512,
    gravity_pull = 10,
    distance = 12,
    orientation = 0.25,
    magnitude = 1.0,
    surface_properties = {
        ["day-night-cycle"] = 60 * 60 * 5, -- 5 minutes
        ["pressure"] = 2000,
        ["gravity"] = 20,
        ["solar-power"] = 120,
    },
    map_gen_settings = planet_map_gen.bumbry(),
    asteroid_spawn_influence = 1,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus, 0.9)
}

local connection = {
    type = "space-connection",
    name = "nauvis-bumbry",
    from = "nauvis",
    to = "bumbry",
    length = 10000,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus)
}

data:extend({ planet, connection })
