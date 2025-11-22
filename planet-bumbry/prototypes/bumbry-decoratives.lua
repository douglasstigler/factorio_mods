local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local decorative_trigger_effects = require("__base__.prototypes.decorative.decorative-trigger-effects")

local function combine_tint(table_1, table_2)
    local t1 = table_1[1] - (1 - table_2[1])
    local t2 = table_1[2] - (1 - table_2[2])
    local t3 = table_1[3] - (1 - table_2[3])
    return { t1, t2, t3 }
end

local bumbry_base_tint = { 0.6, 0.6, 1.0 } -- Purple/Blue tint
local platinum_rock_tint = { .7, .7, .7 }
local bumbry_rock_tint = combine_tint(bumbry_base_tint, platinum_rock_tint)

data:extend {
    {
        type = "noise-expression",
        name = "bumbry_rock_huge",
        expression = "0.005" -- Simple constant probability for now
    }
}

--- TINTABLE ROCKS
--- BIG ROCKS
data:extend {
    {
        name = "huge-bumbry-rock",
        type = "simple-entity",

        flags = { "placeable-neutral", "placeable-off-grid" },
        icon = "__space-age__/graphics/icons/huge-volcanic-rock.png",
        subgroup = "grass",
        order = "b[decorative]-l[rock]-f[huge-bumbry-rock]",
        collision_box = { { -1.5, -1.1 }, { 1.5, 1.1 } },
        selection_box = { { -1.7, -1.3 }, { 1.7, 1.3 } },
        damaged_trigger_effect = hit_effects.rock(),
        dying_trigger_effect = decorative_trigger_effects.huge_rock(),
        minable =
        {
            mining_particle = "stone-particle",
            mining_time = 3,
            results =
            {
                { type = "item", name = "stone",      amount_min = 20, amount_max = 50 },
                { type = "item", name = "bumbry-ore", amount_min = 10, amount_max = 25 }, -- Added bumbry-ore
                { type = "item", name = "iron-ore",   amount_min = 12, amount_max = 35 },
                { type = "item", name = "copper-ore", amount_min = 10, amount_max = 24 },
            },
        },
        map_color = { 100, 100, 200 },
        count_as_rock_for_filtered_deconstruction = true,
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
        impact_category = "stone",
        render_layer = "object",
        max_health = 2000,
        localised_name = { "entity-name.huge-rock" },
        resistances =
        {
            {
                type = "fire",
                percent = 100
            }
        },
        autoplace = {
            order = "a[landscape]-c[rock]-a[huge]",
            probability_expression = "bumbry_rock_huge"
        },
        pictures =
        {
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-05.png",
                width = 201,
                height = 179,
                scale = 0.5,
                shift = { 0.25, 0.0625 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-06.png",
                width = 233,
                height = 171,
                scale = 0.5,
                shift = { 0.429688, 0.046875 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-07.png",
                width = 240,
                height = 192,
                scale = 0.5,
                shift = { 0.398438, 0.03125 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-08.png",
                width = 219,
                height = 175,
                scale = 0.5,
                shift = { 0.148438, 0.132812 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-09.png",
                width = 240,
                height = 208,
                scale = 0.5,
                shift = { 0.3125, 0.0625 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-10.png",
                width = 243,
                height = 190,
                scale = 0.5,
                shift = { 0.1875, 0.046875 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-11.png",
                width = 249,
                height = 185,
                scale = 0.5,
                shift = { 0.398438, 0.0546875 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-12.png",
                width = 273,
                height = 163,
                scale = 0.5,
                shift = { 0.34375, 0.0390625 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-13.png",
                width = 275,
                height = 175,
                scale = 0.5,
                shift = { 0.273438, 0.0234375 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-14.png",
                width = 241,
                height = 215,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-15.png",
                width = 318,
                height = 181,
                scale = 0.5,
                shift = { 0.523438, 0.03125 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-16.png",
                width = 217,
                height = 224,
                scale = 0.5,
                shift = { 0.0546875, 0.0234375 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-17.png",
                width = 332,
                height = 228,
                scale = 0.5,
                shift = { 0.226562, 0.046875 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-18.png",
                width = 290,
                height = 243,
                scale = 0.5,
                shift = { 0.195312, 0.0390625 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-19.png",
                width = 349,
                height = 225,
                scale = 0.5,
                shift = { 0.609375, 0.0234375 },
                tint = bumbry_rock_tint
            },
            {
                filename = "__space-age__/graphics/decorative/huge-volcanic-rock/huge-volcanic-rock-20.png",
                width = 287,
                height = 250,
                scale = 0.5,
                shift = { 0.132812, 0.03125 },
                tint = bumbry_rock_tint
            }
        }
    }
}
