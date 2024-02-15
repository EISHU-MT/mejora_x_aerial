local ob = "default:obsidian"
local db = "default:diamondblock"
local wb = "wool:blue"
local wbk = "wool:black"
local we = "wool:white"
local mese = "default:mese"
local coal = "default:coal_lump"
local wr = "wool:red"
local BYR = "butterflies:butterfly_red"
local stick = "default:stick"
local base = "mejora:base_alas"
local oro = "default:gold_ingot"
local hierro = "default:steel_ingot"
local ll = "lavastuff:ingot"
local abismal = "abismal:lingoteabismal"
local cobalto = "cobalto:lingotedecobalto"
local goldb = "default:goldblock"
local diamondb = "default:diamondblock"
local bronzeb = "default:bronzeblock"
local cobreb = "default:copperblock"
local panel = "xpanes:pane_flat"
local blued = "dye:blue"
local craft = minetest.register_craft

if minetest.get_modpath("abismal")  then
	craft({
		output = "mejora:escudo_culthu",
		recipe = {
			{abismal, abismal, abismal},
			{abismal, hierro, abismal},
			{"", abismal, ""},
		}
	})
end
if minetest.get_modpath("cobalto")  then
	craft({
		output = "mejora:escudo_cobalto",
		recipe = {
			{hierro, cobalto, hierro},
			{cobalto, mese, cobalto},
			{"", cobalto, ""},
		}
	})
end	
if minetest.get_modpath("lavastuff")  then
	craft({
		output = "mejora:escudo_heroe",
		recipe = {
			{hierro, ll, hierro},
			{ll, hierro, ll},
			{"", ll, ""},
		}
	})
end	

craft({
	output = "mejora:escudo_ansata",
	recipe = {
		{ob, mese, ob},
		{ob, mese, ob},
		{"", ob, ""},
	}
})
craft({
	output = "mejora:base_alas",
	recipe = {
		{stick, stick, stick},
		{stick, we, we},
		{stick, we, we},
	}
})
craft({
	output = "mejora:godoudamas",
	recipe = {
		{ob, ob, ob},
		{ob, db, ob},
		{ob, ob, ob},
	}
})
craft({
	output = "mejora:wings_demoniacas2",
	recipe = {
		{wb, wb, wbk},
		{wb, base, ""},
		{wbk, "", ""},
	}
})
craft({
	output = "mejora:wings_butterfly",
	recipe = {
		{we, we, we},
		{we, base, BYR},
		{we, "", ""},
	}
})
craft({
	output = "mejora:wings_god",
	recipe = {
		{ll, we, ll},
		{ll, base, ll},
		{wbk, mese, wbk},
	}
})

craft({
	output = "mejora:charred_wings",
	recipe = {
		{we, we, we},
		{we, base, coal},
		{we, "", ""},
	}
})

craft({
	output = "mejora:wings_zodiaco",
	recipe = {
		{oro, oro, we},
		{oro, base, oro},
		{we, oro, oro},
	}
})
craft({
	output = "mejora:harley_queen",
	recipe = {
		{wbk, wr, wbk},
		{wr, base, ""},
		{wbk, "", ""},
	}
})
craft({
	output = "mejora:escudo_cap",
	recipe = {
		{diamondb, bronzeb, diamondb},
		{bronzeb, cobreb, bronzeb},
		{diamondb, bronzeb, diamondb},
	}
})
craft({
	output = "mejora:escudo_paladin",
	recipe = {
		{mese, goldb, mese},
		{mese, goldb, mese},
		{"", mese, ""},
	}
})
craft({
	output = "mejora:dr_tdm",
	recipe = {
		{hierro, hierro, hierro},
		{panel, hierro, panel},
		{blued, "", blued},
	}
})
craft({
	output = "mejora:sunglasses",
	recipe = {
		{hierro, hierro, hierro},
		{panel, hierro, panel},
		{"", "", ""},
	}
})
craft({
	output = "mejora:deadpool",
	recipe = {
		{wr, wr, wr},
		{wr, wbk, wr},
		{wr, wr, wr},
	}
})




