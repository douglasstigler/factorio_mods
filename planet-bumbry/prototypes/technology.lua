local util = require("util")

data:extend({
    {
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
})
