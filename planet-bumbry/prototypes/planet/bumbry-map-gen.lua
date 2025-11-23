local planet_map_gen = require("__space-age__/prototypes/planet/planet-map-gen")

planet_map_gen.bumbry = function()
    return {
        terrain_segmentation = "normal",
        water = "high",
        autoplace_controls = {
            ["bumbrium-lake"] = {},
            ["bumbry-ore"] = {},
            ["bumble-tree"] = {}
        },
        autoplace_settings = {
            ["tile"] = {
                settings = {
                    ["grass-1"] = {},
                    ["bumbrium-lake"] = {}
                }
            },
            ["entity"] = {
                settings = {
                    ["bumbry-ore"] = {},
                    ["bumble-tree"] = {}
                }
            }
        }
    }
end

return planet_map_gen
