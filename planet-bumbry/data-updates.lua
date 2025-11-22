local require_gleba = settings.startup["require-gleba-before-planet-bumbry"].value

if require_gleba then
    local tech = data.raw["technology"]["planet-discovery-bumbry"]
    if tech then
        -- Add agricultural science pack to ingredients
        table.insert(tech.unit.ingredients, { "agricultural-science-pack", 1 })

        -- Add agricultural science pack to prerequisites (or planet discovery gleba)
        -- Using agricultural-science-pack as prerequisite ensures Gleba is at least accessible/researched enough to get the pack.
        -- Corrundum used "metallurgic-science-pack" as prereq.
        if tech.prerequisites then
            table.insert(tech.prerequisites, "agricultural-science-pack")
        else
            tech.prerequisites = { "agricultural-science-pack" }
        end
    end
end
