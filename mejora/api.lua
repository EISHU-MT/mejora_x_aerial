function estadisticas(player, fov)
 local playerMeta = player:get_meta()
 local hp_bonus = 0
 local vida_extra = 0
 local name = player:get_player_name()
 local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
 for i = 1,acc_cantidad do
  local acc_ocurrente = inv:get_stack("accs",i)
  local acc_Meta = acc_ocurrente:get_meta() 
   if acc_ocurrente:get_definition().acc_CustomStats ~= nil then
    for TmpCStat,TmpCStats in ipairs(acc_ocurrente:get_definition().acc_CustomStats) do
    end 
   end
   if acc_ocurrente:get_definition().vida_extra ~= nil then
   vida_extra = vida_extra + acc_ocurrente:get_definition().vida_extra
   end
   vida_extra = vida_extra + acc_Meta:get_int("acc_meta_hpBonus")
   end
   local meta = player:get_meta()
   meta:set_int("hp_extra",vida_extra)
   player:set_properties({hp_max=25+meta:get_int("hp_extra")})

end
-----/-----/-----/-----/
function act_acc(player)
 local name = player:get_player_name()
 local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
 for i = 1,acc_cantidad do
  local chequeo = inv:get_stack("accs",i)
  local acc_Meta = chequeo:get_meta() 
 end
 local meta = player:get_meta()
end
-----/-----/-----/-----/
function UI_ACC(player)
 local playerMeta = player:get_meta()
 local name = player:get_player_name()
 local meta = player:get_meta()
 local player_skin = skin
 selectordevanidad =(
  "size[8,10]"..
  "image[4.5,1;4,4.7;accs_preview.png]"..
 -- "image[1,0.6;1,2;"..player_skin..".png]"..
  "label[2.0,0;Accesorios / Accesories]"..
  "list[current_player;main;0,6;8,4;]"..
  "image[0,1.8;4.2,1.3;cuadro.png]"..
  "list[detached:accs_"..name..";accs;0.25,1.9;8,5;]"..
  "button_exit[1,4;2,1;exit;ok]"
    )
  minetest.show_formspec(name,"mejoraselectordevanidad", selectordevanidad)
end
-----/-----/-----/-----/
function selector_IU(player)
 local name = player:get_player_name()
 local meta = player:get_meta()
 selectordevanidad =(
 "size[8,11]"..
 "button[1,0;5,5;equipo;Accesorios / Accesories]"..
 "button_exit[1,0;4,1;exit;ok]")
  minetest.show_formspec(name,"mejoraselectordevanidad", selectordevanidad) 
end
