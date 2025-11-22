local fluid = table.deepcopy(data.raw["fluid"]["water"])
fluid.name = "bumbrium-solution"
fluid.default_temperature = 15
fluid.max_temperature = 100
fluid.base_color = { r = 112 / 255, g = 53 / 255, b = 176 / 255 }
fluid.flow_color = { r = 112 / 255, g = 53 / 255, b = 176 / 255 }
fluid.icon = "__base__/graphics/icons/fluid/water.png"
fluid.icon_size = 64
fluid.icon_mipmaps = 4
fluid.order = "a[fluid]-b[bumbrium]"

local juice = table.deepcopy(data.raw["fluid"]["water"])
juice.name = "bumbleberry-juice"
juice.default_temperature = 25
juice.max_temperature = 100
juice.base_color = { r = 1, g = 0, b = 1 }
juice.flow_color = { r = 1, g = 0, b = 1 }
juice.icon = "__base__/graphics/icons/fluid/heavy-oil.png" -- Placeholder
juice.order = "a[fluid]-c[bumbleberry-juice]"

local tile = table.deepcopy(data.raw["tile"]["water"])
tile.name = "bumbrium-lake"
tile.fluid = "bumbrium-solution"
tile.map_color = { r = 112 / 255, g = 53 / 255, b = 176 / 255 }
tile.autoplace.control = "bumbrium-lake"
tile.autoplace.default_enabled = false
tile.minable = nil -- Can't mine water

data:extend({ fluid, juice, tile })
