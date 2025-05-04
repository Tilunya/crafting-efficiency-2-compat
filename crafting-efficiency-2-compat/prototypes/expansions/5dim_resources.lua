if mods["5dim_resources"] then
    Packs = {
		{ { "automation-science-pack", 1 } },
		{ { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } },
		{ { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } },
		{ { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 } },
		{ { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 }, { "utility-science-pack", 1 } },
		{ { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 }, { "utility-science-pack", 1 }, { "space-science-pack", 1 } },
	}
    fiveD_Recipes = {
		["5d-iron-dust"] = {
			name = "Iron dust productivity (5Dim)",
			icon = "__5dim_resources__/graphics/icon/resources/5d-iron-dust.png",
			stages = 5,
			stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
			stages_levels = { 3, 3, 4, 5 },
			stages_costs = { 1000, 1000, 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
			stages_productivities = { 10, 10, 10, 10, 10 },
			stages_times = { 45, 45, 45, 45, 45 }
		},
		["5d-copper-dust"] = {
			name = "Copper dust productivity (5Dim)",
			icon = "__5dim_resources__/graphics/icon/resources/5d-copper-dust.png",
			stages = 5,
			stages_packs = { Packs[2], Packs[3], Packs[4], Packs[5], Packs[6] },
			stages_levels = { 3, 3, 4, 5 },
			stages_costs = { 1000, 1000, 1000, 1000, 1200 },
			stages_cost_multipliers = { 1, 1, 1, 1, 1.5 },
			stages_productivities = { 10, 10, 10, 10, 10 },
			stages_times = { 45, 45, 45, 45, 45 }
		}
	}
    CE_Insert_recipe("copper-plate", "5d-copper-plate")
    CE_Insert_recipe("iron-plate", "5d-iron-plate")
	
    for name, data in pairs(fiveD_Recipes) do
        CE_Add_Recipe(data,name)
    end
end

