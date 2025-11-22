local resource = table.deepcopy(data.raw["resource"]["iron-ore"])
resource.name = "bumbry-ore"
resource.minable.result = "bumbry-ore"
resource.stages = {
    sheet = {
        filename = "__planet-bumbry__/graphics/entity/bumbry-ore.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
            filename = "__planet-bumbry__/graphics/entity/bumbry-ore.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            scale = 1
        }
    }
}
resource.map_color = { r = 0.2, g = 0.2, b = 0.9 }

data:extend({ resource })

local entity = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
entity.name = "bumbry-patch"
entity.minable.result = "bumbry-patch"
entity.module_specification.module_slots = 6
entity.crafting_speed = 2
entity.collision_box = { { -2.4, -2.4 }, { 2.4, 2.4 } }
entity.selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } }
-- Optional: Tint it or change icon to distinguish it, but user just said "use as template"
-- Let's leave it identical visually for now as requested, or maybe just a slight tint if I could, but deepcopy is safest for "template".

data:extend({ entity })

local tree = table.deepcopy(data.raw["tree"]["tree-04"])
tree.name = "bumble-tree"
tree.minable.result = "bumble-berry"
tree.minable.count = 5
data:extend({ tree })

local smasher = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
smasher.name = "bumble-smasher"
smasher.minable.result = "bumble-smasher"
smasher.crafting_categories = { "bumble-smashing" }
smasher.crafting_speed = 1.25
smasher.module_specification.module_slots = 4
-- Ensure fluid boxes are present (Assembler 3 has them by default)
data:extend({ smasher })
