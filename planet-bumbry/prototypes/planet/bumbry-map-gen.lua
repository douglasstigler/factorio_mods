local planet_map_gen = {}

planet_map_gen.bumbry = function()
    return {
        terrain_segmentation = "normal",
        water = "high",
        autoplace_controls = {
            ["bumbrium-lake"] = { frequency = "normal", size = "normal", richness = "normal" },
            ["bumbry-ore"] = { frequency = "normal", size = "normal", richness = "normal" },
            ["bumble-tree"] = { frequency = "normal", size = "normal", richness = "normal" }
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
                    ["bumble-tree"] = { frequency = "normal", size = "normal", richness = "normal" },
                    ["bumbry-ore"] = { frequency = "normal", size = "normal", richness = "normal" },
                    ["huge-bumbry-rock"] = {},
                    ["stone-rock"] = { frequency = "normal", size = "normal", richness = "normal" }
                }
            }
        }
    }
end

return planet_map_gen
