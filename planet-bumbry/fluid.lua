local fluid = table.deepcopy(data.raw["fluid"]["water"])
fluid.name = "bumbrium-solution"
fluid.default_temperature = 15
fluid.max_temperature = 100
fluid.base_color = { r = 0.2, g = 0.2, b = 0.8 }
fluid.flow_color = { r = 0.2, g = 0.2, b = 0.8 }
fluid.icon = "__base__/graphics/icons/fluid/water.png"
fluid.icon_size = 64
fluid.icon_mipmaps = 4
fluid.order = "a[fluid]-b[bumbrium]"

local tile = table.deepcopy(data.raw["tile"]["water"])
tile.name = "bumbrium-lake"
tile.fluid = "bumbrium-solution"
tile.map_color = { r = 0.2, g = 0.2, b = 0.8 }
tile.minable = nil -- Can't mine water

data:extend({ fluid, tile })
