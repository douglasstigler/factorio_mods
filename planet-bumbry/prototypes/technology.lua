local util = require("util")

local planet_discovery = {
    type = "technology",
    name = "planet-discovery-bumbry",
    icons = util.technology_icon_constant_planet("__planet-bumbry__/graphics/technology/planet-discovery-bumbry.png"),
    icon_size = 512, -- Using 512 because the source image is 512 (assumed from starmap usage)
    essential = true,
    effects = {
        {
            type = "unlock-space-location",
            space_location = "bumbry",
            use_icon_overlay_constant = true
        }
    },
    prerequisites = {
        "space-science-pack"
    },
    unit = {
        count = 1000,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "space-science-pack",      1 }
        },
        time = 60
    },
    order = "ea[bumbry]"
}

local bumbry_processing = {
    type = "technology",
    name = "bumbry-plate-processing",
    icon = "__planet-bumbry__/graphics/icons/bumbry-ore.png",
    icon_size = 64,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "bumbry-plate"
        }
    },
    prerequisites = {
        "planet-discovery-bumbry"
    },
    research_trigger = {
        type = "mine-entity",
        entity = "bumbry-ore"
    },
    order = "ea[bumbry]-a[processing]"
}

data:extend({ planet_discovery, bumbry_processing })
