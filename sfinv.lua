if not minetest.global_exists("sfinv") then
	minetest.log("Warning", "sfinv.lua: Mod loaded but unused.")
	return
end
if minetest.get_modpath("sfinv") then
sfinv.register_page("sfinv:accessories", {
	title = ("mejoras"),
	get = function(self, player, context)
		return sfinv.make_formspec(player, context, [[
		label[0,4.4;Accesorios by Giga_M]
		label[0,4.8;contact : Discord : brunov2189]
		button[1.5,1.5;5,1;acc_equips;Accesorios / Accesories]
				listring[current_player;main]
			]], true)
	end
})
end
function selector_ui(player)
local name = player:get_player_name()
local playerMeta = player:get_meta()
seleccion =(
  "size[8,10]"..
  "image[4.5,1;4,4.7;accs_preview.png]"..
  "label[2.0,0;Accesorios / Accesories]"..
  "list[current_player;main;0,6;8,4;]"..
  "image[0,1.8;4.2,1.3;cuadro.png]"..
  "list[detached:accs_"..name..";accs;0.25,1.9;8,5;]"..
  "button_exit[1,4;2,1;exit;ok]")

	minetest.show_formspec(name,"mejora:seleccion", seleccion) 
end
if minetest.get_modpath("unified_inventory") then
unified_inventory.register_button("accinv", {
	type = "image",
	image = "iconounified.png",
	tooltip = ("Accessories"),
	action = function(player)
selector_ui(player)
	end
})
end