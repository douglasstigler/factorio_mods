local planet = {
    type = "planet",
    name = "bumbry",
    icon = "__base__/graphics/icons/planet-nauvis.png", -- Placeholder until custom icon is ready
    icon_size = 64,
    gravity_pull = 10,
    distance = 15,
    orientation = 0.25,
    magnitude = 1.0,
    surface_properties = {
        ["day-night-cycle"] = 60 * 60 * 5, -- 5 minutes
        ["pressure"] = 2000,
        ["gravity"] = 20,
    },
    map_gen_settings = {
        terrain_segmentation = "normal",
        water = "high",
        autoplace_controls = {
            ["bumbrium-lake"] = { frequency = "normal", size = "normal", richness = "normal" }
        },
        autoplace_settings = {
            ["tile"] = {
                settings = {
                    ["grass-1"] = { frequency = "normal", size = "normal", richness = "normal" },
                    ["bumbrium-lake"] = { frequency = "normal", size = "normal", richness = "normal" }
                }
            },
            ["entity"] = {
                settings = {
                    ["tree-01"] = { frequency = "normal", size = "normal", richness = "normal" },
                    ["stone-rock"] = { frequency = "normal", size = "normal", richness = "normal" }
                }
            }
        }
    },
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
