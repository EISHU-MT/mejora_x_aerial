local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath.."/accesorios.lua")
dofile(modpath.."/crafteos.lua")
dofile(modpath.."/api.lua")
dofile(modpath.."/sfinv.lua")

acc_cantidad = 3
tipo_de_accesorios = {
"alas",
"hombreras",
"escudos",
}
acc_visual = {}
minetest.register_on_joinplayer(function(player)
  local name = player:get_player_name()
  local meta = player:get_meta()
  local acc_contenido = minetest.deserialize(meta:get_string("accesorio_inv"))

  minetest.create_detached_inventory("accs_"..name.."",{

     on_put = function(inv,lista,index,stack,player)
     local acc_lugar = tipo_de_accesorios[index]
      if nil ~= nil then
        visual_up(player,1,acc_lugar,index)
        else
        visual_up(player,stack,1,acc_lugar,index)
      end
      local acc_tabla = {}
      for serAcc,stack in ipairs(inv:get_list("accs")) do
        table.insert(acc_tabla, stack:to_string())
      end
      meta:set_string("accesorio_inv",(minetest.serialize(acc_tabla)))
      act_acc(player)
      estadisticas(player)
      end,

      on_take = function(inv,lista,index,stack,player)
         local acc_lugar = tipo_de_accesorios[index]
         if nil ~= nil then
           visual_up(player,1,acc_lugar,index)
           else
             visual_up(player,stack,0,acc_lugar,index)
         end
         local acc_tabla = {}
         for serAcc,stack in ipairs(inv:get_list("accs")) do
            table.insert(acc_tabla, stack:to_string())
         end
         meta:set_string("accesorio_inv",(minetest.serialize(acc_tabla)))
         act_acc(player)
         estadisticas(player)
      end,
  })
  ---------------
  if acc_contenido ~= nil then
    local acc_lista = minetest.deserialize(meta:get_string("accesorio_inv"))
    local iteml = {}
    for serAcc,stack in ipairs(acc_lista) do
  	  table.insert(iteml, ItemStack(stack))
    end
    local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
    inv:set_list("accs",iteml)
    estadisticas(player)
  end
----------------------------
  minetest.after(0.5, function(player)
  acc_visual[name] = {body={}}
  local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
  for i = 1,acc_cantidad do
    if nil ~= nil then
      local acc_puesto = tipo_de_accesorios[i]
      visual_up(player,1,acc_puesto,i)
      else
       acc_ocurrente = inv:get_stack("accs",i)
        if acc_ocurrente:get_definition().puesto ~= nil then
           local acc_puesto = tipo_de_accesorios[i]
           visual_up(player,acc_ocurrente,1,acc_puesto,i)
        end
      end
    end
  end, player)
end)
----------------------------------------------------------------------------------
minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
	acc_visual[name] = nil
end)
----------------------------------------------------------------------------------
minetest.register_on_player_receive_fields(function(player, formname, fields)
 if fields["acc_equips"] then
   local name = player:get_player_name()
   inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
   inv:set_size("accs",acc_cantidad)
   inv:set_width("accs",8)
   UI_ACC(player)
 end
end)
----------------------------------------------------------------------------------
local entidad = {
	physical = false,
	timer = 0,
	hp_max = 69420,
	visual = "mesh",
	mesh = "character.b3d",
	visual_size = {x=0.5, y=0.5},
	textures = {"default_dirt.png"},
	lastpos = {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}
minetest.register_entity("mejora:entidad",entidad)
  entidad.on_activate = function(self, staticdata)
end
entidad.on_step = function(self, dtime)
 if self.object:get_attach() == nil then
   self.object:remove()
 end
end
----------------------------------------------------------------------------------
function visual_up(player,accesorio,tipo,acc_puesto,index)
 local name = player:get_player_name()
 local pos = player:getpos()
    if tipo == 1 then
      local nombre_de_item = accesorio:get_name()
      local acc_def = accesorio:get_definition()
      local grupo = minetest.get_item_group
 
      if grupo(nombre_de_item, "cuerpo") > 0 then
         local modelo = acc_def.modelo or ("cuerpo.b3d")
         local textura = acc_def.textura or ("simple_test_body.png")
         local posicion = acc_def.posicion or {x=0,y=3.25,z=0}
         local animacion = acc_def.animacion or {x=0,y=0}
         local medida = acc_def.medida or {x=2.5,y=2.5}
           if acc_visual[name].body[acc_puesto] ~= nil then
              acc_visual[name].body[acc_puesto]:remove()
           end
         acc_visual[name].body[acc_puesto] = minetest.add_entity(pos, "mejora:entidad")
         acc_visual[name].body[acc_puesto]:set_attach(player,"Body",posicion,{x=0,y=180,z=0} )
         acc_visual[name].body[acc_puesto]:set_animation(animacion,24,0)
         acc_visual[name].body[acc_puesto]:set_properties({textures={""..textura..""}})
         acc_visual[name].body[acc_puesto]:set_properties({mesh=""..modelo..""})
         acc_visual[name].body[acc_puesto]:set_properties({visual_size=medida})
      end
      if grupo(nombre_de_item, "flotante") > 0 then
         local modelo = acc_def.modelo or ("hombreras.b3d")
         local textura = acc_def.textura or ("simple_test_body.png")
         local posicion = acc_def.posicion or {x=0,y=3.25,z=0}
         local animacion = acc_def.animacion or {x=0,y=0}
         local medida = acc_def.medida or {x=2.5,y=2.5}
           if acc_visual[name].body[acc_puesto] ~= nil then
              acc_visual[name].body[acc_puesto]:remove()
           end
         acc_visual[name].body[acc_puesto] = minetest.add_entity(pos, "mejora:entidad")
         acc_visual[name].body[acc_puesto]:set_attach(player,"Body",posicion,{x=0,y=180,z=0} )
         acc_visual[name].body[acc_puesto]:set_animation(animacion,24,0)
         acc_visual[name].body[acc_puesto]:set_properties({textures={""..textura..""}})
         acc_visual[name].body[acc_puesto]:set_properties({mesh=""..modelo..""})
         acc_visual[name].body[acc_puesto]:set_properties({visual_size=medida})
      end
      if grupo(nombre_de_item, "Derecha") > 0 then
         local modelo = acc_def.modelo or ("escudo.b3d")
         local textura = acc_def.textura or ("simple_test_body.png")
         local posicion = acc_def.posicion or {x=0,y=3.25,z=0}
         local animacion = acc_def.animacion or {x=0,y=0}
         local medida = acc_def.medida or {x=2.5,y=2.5}
           if acc_visual[name].body[acc_puesto] ~= nil then
              acc_visual[name].body[acc_puesto]:remove()
           end
         acc_visual[name].body[acc_puesto] = minetest.add_entity(pos, "mejora:entidad")
         acc_visual[name].body[acc_puesto]:set_attach(player,"Body",posicion,{x=0,y=180,z=0} )
         acc_visual[name].body[acc_puesto]:set_animation(animacion,24,0)
         acc_visual[name].body[acc_puesto]:set_properties({textures={""..textura..""}})
         acc_visual[name].body[acc_puesto]:set_properties({mesh=""..modelo..""})
         acc_visual[name].body[acc_puesto]:set_properties({visual_size=medida})
      end
  end
  if tipo == 0 then
     if acc_visual[name].body[acc_puesto] ~= nil then
        acc_visual[name].body[acc_puesto]:remove()
     end
  end
  -----------------------------------
  minetest.register_on_dieplayer(function(player)
  local name = player:get_player_name()
  local meta = player:get_meta()

  if acc_contenido ~= 1  then
    local acc_lista = minetest.deserialize(meta:get_string("accesorio_inv"))
    local iteml = {}
    for serAcc,stack in ipairs(acc_lista) do
      table.remove(acc_lista,serAcc)
    end
    local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
    inv:set_list("accs",lista)
  end


  if tipo == 1 then
     if acc_visual[name].body[acc_puesto] ~= nil then
        acc_visual[name].body[acc_puesto]:remove()
     end
  end

  local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
  for i = 1,acc_cantidad do
    if 1 ~= nil then
      local acc_puesto = tipo_de_accesorios[i]
      visual_up(player,1,acc_puesto,i)
      else
       acc_ocurrente = inv:get_stack("accs",i)
        if acc_ocurrente:get_definition().puesto ~= nil then
           local acc_puesto = tipo_de_accesorios[i]
           visual_up(player,acc_ocurrente,1,acc_puesto,i)
        end
      end
    end
  end)
end