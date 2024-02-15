local S = minetest.get_translator("mejora")
local herramienta = minetest.register_tool

mejora = {}

mejora.enable_skin = minetest.settings:get_bool("mejora_enable_skin")

mejora.enable_shield = minetest.settings:get_bool("mejora_enable_shield")

mejora.enable_wings = minetest.settings:get_bool("mejora_enable_wings")

--herramienta("mejora:hombreras_hierro", {
--	description = "hombreras hierro",
--	inventory_image = "hombreras_hierro_inv.png",
--  puesto = "hombreras",
--	medida = ({x=2,y=2.0}),
--	modelo = ("hombreras.b3d"),
--	textura = ("hombreras_hierro.png"),
--	posicion = {x=0,y=4.0,z=0},
--  groups = {flotante = 1},
--})
if mejora.enable_skin == true then
	herramienta("mejora:dr_tdm", {
	description = "sunglasses dr",
	inventory_image = "dr_tdm_inv.png",
    puesto = "alas",
	medida = ({x=2.3,y=2}),
	modelo = ("mascara.b3d"),
	textura = ("dr_tdm.png"),
	posicion = {x=0,y=7,z=0},
	animacion = {x=2,y=1},
	acc_glow_body = 0,
    groups = {flotante = 1},
 })
 herramienta("mejora:sunglasses", {
	description = "sunglasses",
	inventory_image = "lentes_inv.png",
    puesto = "alas",
	medida = ({x=2.4,y=2}),
	modelo = ("mascara.b3d"),
	textura = ("lentes.png"),
	posicion = {x=0,y=7.2,z=0},
	animacion = {x=2,y=1},
	acc_glow_body = 0,
    groups = {flotante = 1},
 })
  herramienta("mejora:deadpool", {
	description = "deadpool mask",
	inventory_image = "deadpool_inv.png",
    puesto = "alas",
	medida = ({x=2.6,y=2.3}),
	modelo = ("mascara.b3d"),
	textura = ("deadpool.png"),
	posicion = {x=0,y=8.5,z=-0.1},
	animacion = {x=2,y=1},
	acc_glow_body = 0,
    groups = {flotante = 1},
 })
end

if mejora.enable_wings == true then
 herramienta("mejora:base_alas", {
	description = S("wings base"),
	inventory_image = "base_alas_inv.png",
	groups = {flammable = 2}
 })
 herramienta("mejora:godoudamas", {
	description = ("godoudamas \n" ..("+ 5 HP \n")),
	inventory_image = "godoudama_inv.png",
    puesto = "alas",
	medida = ({x=3.0,y=3.0}),
	modelo = ("naruto.b3d"),
	textura = ("godoudamas.png"),
	posicion = {x=0.5,y=4.0,z=0},
	animacion = {x=0,y=0},
	vida_extra = 5,
    groups = {flotante = 1},  
 })

 herramienta("mejora:wings_demoniacas2", {
	description = S("demonic wings blues"),
	inventory_image = "alas_demoniacas2.png",
    puesto = "alas",
	medida = ({x=3.0,y=3.0}),
	modelo = ("alas3d.b3d"),
	textura = ("alas_demoniacas2_inv.png"),
	posicion = {x=0,y=3.5,z=1.1},
	animacion = {x=1,y=40},
    groups = {cuerpo = 1},
 })
 herramienta("mejora:harley_queen", {
	description = S("wings harley queen"),
	inventory_image = "harley_queen_inv.png",
    puesto = "alas",
	medida = ({x=3.0,y=3.0}),
	modelo = ("alas3d.b3d"),
	textura = ("harley_queen.png"),
	posicion = {x=0.2,y=5,z=1.1},
	animacion = {x=1,y=40},
    groups = {cuerpo = 1},
 })
 herramienta("mejora:wings_butterfly", {
	description = S("wings butterfly"),
	inventory_image = "mariposa_inv.png",
    puesto = "alas",
	medida = ({x=3.0,y=3.0}),
	modelo = ("alas3d.b3d"),
	textura = ("mariposa.png"),
	posicion = {x=0.2,y=5,z=1.1},
	animacion = {x=1,y=40},
    groups = {cuerpo = 1},
 })
 herramienta("mejora:wings_god", {
	description = S("wings angel dark"),
	inventory_image = "angel_dark_inv.png",
    puesto = "alas",
	medida = ({x=3.0,y=3.0}),
	modelo = ("alas3d.b3d"),
	textura = ("angel_dark.png"),
	posicion = {x=0,y=4,z=1},
	animacion = {x=1,y=40},
    groups = {cuerpo = 1},
 })
 herramienta("mejora:wings_zodiaco", {
	description = S("wings zodiaco"),
	inventory_image = "alas_zodiaco_inv.png",
    puesto = "alas",
	medida = ({x=3.0,y=3.0}),
	modelo = ("alas3d.b3d"),
	textura = ("alas_zodiaco.png"),
	posicion = {x=0,y=7.0,z=0},
	animacion = {x=1,y=20},
    groups = {cuerpo = 1},
 })
 herramienta("mejora:charred_wings", {
	description = S("demonic wings"),
	inventory_image = "alas_carbonizadas_inv.png",
    puesto = "alas",
	medida = ({x=3.0,y=3.0}),
	modelo = ("alas3d.b3d"),
	textura = ("alas_carbonizadas.png"),
	posicion = {x=0,y=4.0,z=1.1},
	animacion = {x=1,y=20},
    groups = {cuerpo = 1},
 })
end
if mejora.enable_shield == true then
 herramienta("mejora:escudo_cap", {
	description = S("shield captain america \n" ..("+ 15 HP \n")),
	inventory_image = "escudo_cap_inv.png",
    puesto = "escudos",
	medida = ({x=2,y=2.0}),
	modelo = ("escudo.b3d"),
	textura = ("escudo_cap.png"),
	posicion = {x=5.1,y=3.5,z=-1.6},
	vida_extra = 15,
   groups = {Derecha = 1},
 })
 herramienta("mejora:escudo_paladin", {
	description = S("shield paladin \n" ..("+ 18 HP \n")),
	inventory_image = "escudo_paladin_inv.png",
    puesto = "escudos",
	medida = ({x=2,y=2.0}),
	modelo = ("escudo.b3d"),
	textura = ("escudo_paladin.png"),
	posicion = {x=5.1,y=3.5,z=-1.6},
	vida_extra = 18,
    groups = {Derecha = 1},
 })
 herramienta("mejora:escudo_culthu", {
	description = S("shield culhthu \n" ..("+ 20 HP \n")),
	inventory_image = "escudo_culthu_inv.png",
    puesto = "escudos",
	medida = ({x=2,y=2.0}),
	modelo = ("escudo.b3d"),
	textura = ("escudo_culthu.png"),
	posicion = {x=5.1,y=3.5,z=-1.6},
	vida_extra = 20,
    groups = {Derecha = 1},
 })
 herramienta("mejora:escudo_heroe", {
	description = S("shield of hero \n" ..("+ 20 HP \n")),
	inventory_image = "escudo_heroe_inv.png",
    puesto = "escudos",
	medida = ({x=2,y=2.0}),
	modelo = ("escudo.b3d"),
	textura = ("escudo_heroe.png"),
	posicion = {x=5.1,y=3.5,z=-1.6},
	vida_extra = 20,
    groups = {Derecha = 1},
 })
 herramienta("mejora:escudo_ansata", {
	description = S("ansata shield \n" ..("+ 15 HP \n")),
	inventory_image = "escudo_ansata_inv.png",
    puesto = "escudos",
	medida = ({x=2,y=2.0}),
	modelo = ("escudo.b3d"),
	textura = ("escudo_ansata.png"),
	posicion = {x=5.1,y=3.5,z=-1.6},
	vida_extra = 15,
    groups = {Derecha = 1},
 })
    herramienta("mejora:escudo_cobalto", {
	description = S("cobalt shield \n" ..("+ 10 HP \n")),
	inventory_image = "escudo_cobalto_st.png",
    puesto = "escudos",
	medida = ({x=2,y=2.0}),
	modelo = ("escudo.b3d"),
	textura = ("escudo_cobalto_inv_st.png"),
	posicion = {x=5.1,y=3.5,z=-1.6},
	vida_extra = 10,
    groups = {Derecha = 1},
 })
end