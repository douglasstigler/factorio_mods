data:extend({
    {
        type = "recipe",
        name = "bumbry-plate",
        category = "smelting",
        enabled = false,
        energy_required = 3.2,
        ingredients = {
            { type = "item", name = "bumbry-ore", amount = 1 }
        },
        results = {
            { type = "item", name = "bumbry-plate", amount = 1 }
        }
    },
    {
        type = "recipe",
        name = "bumbleberry-juice",
        category = "bumble-smashing",
        energy_required = 2,
        ingredients = {
            { type = "item", name = "bumble-berry", amount = 5 }
        },
        results = {
            { type = "fluid", name = "bumbleberry-juice", amount = 50 }
        }
    }
})
