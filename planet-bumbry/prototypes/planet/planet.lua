local planet_map_gen = require("__planet-bumbry__.prototypes.planet.bumbry-map-gen")

local planet = {
    type = "planet",
    name = "bumbry",
    icon = "__planet-bumbry__/graphics/icons/starmap-planet-bumbry.png",
    starmap_icon = "__planet-bumbry__/graphics/icons/starmap-planet-bumbry.png",
    starmap_icon_size = 512,
    icon_size = 512,
    gravity_pull = 10,
    distance = 15,
    orientation = 0.25,
    magnitude = 1.0,
    surface_properties = {
        ["day-night-cycle"] = 60 * 60 * 5, -- 5 minutes
        ["pressure"] = 2000,
        ["gravity"] = 20,
    },
    map_gen_settings = planet_map_gen.bumbry(),
    asteroid_spawn_definitions = {
        {
            type = "asteroid-chunk",
            probability = 1,
            speed = 1
        }
    }
}

local connection = {
    type = "space-connection",
    name = "nauvis-bumbry",
    from = "nauvis",
    to = "bumbry",
    length = 15000,
    asteroid_spawn_definitions = {
        {
            type = "asteroid-chunk",
            probability = 1,
            speed = 1
        }
    }
}

data:extend({ planet, connection })
