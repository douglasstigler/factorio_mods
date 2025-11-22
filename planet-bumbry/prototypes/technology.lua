data:extend({
    {
        type = "technology",
        name = "planet-discovery-bumbry",
        icon = "__planet-bumbry__/graphics/technology/planet-discovery-bumbry.png", -- Placeholder path
        icon_size = 256,
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
