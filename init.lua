 local colour = {
--     Node          dye       Description    Glass Colour
	{"white",      "white",      "White",      "white"},
	{"silver",     "grey",       "Silver",     "silver"},
	{"grey",       "dark_grey",  "Grey",       "gray"},
	{"black",      "black",      "Black",      "black"},
	{"purple",     "violet",     "Purple",     "purple"},
	{"blue",       "blue",       "Blue",       "blue"},
	{"cyan",       "cyan",       "Cyan",       "cyan"},
	{"green",      "dark_green", "Green",      "green"},
	{"lime",       "green",      "Lime",       "lime"},
	{"yellow",     "yellow",     "Yellow",     "yellow"},
	{"brown",      "brown",      "Brown",      "brown"},
	{"orange",     "orange",     "Orange",     "orange"},
	{"red",        "red",        "Red",        "red"},
	{"magenta",    "magenta",    "Magenta",    "magenta"},
	{"pink",       "pink",       "Pink",       "pink"},
    {"light_blue", "lightblue",  "Light Blue", "light_blue"},
}

for _, colour in pairs(colour) do

minetest.register_node("mcl_light_blocks:"..colour[1], {
	description = ("Block of Light"),
	tiles = {"mcl_light_blocks_"..colour[1]..".png"},
	is_ground_content = false,
	drawtype = "glasslike",
	light_source = minetest.LIGHT_MAX,
	sunlight_propagates = true,
	stack_max = 64,
	groups = {pickaxey=1, flammable=1, building_block=1, material_stone=1, fire_encouragement=5, fire_flammability=5},
	sounds = mcl_sounds.node_sound_glass_defaults(),
	_mcl_blast_resistance = 0.3,
	_mcl_hardness = 0.3,
})

minetest.register_craft({
	output = "mcl_light_blocks:"..colour[1],
	recipe = {
{"mcl_core:glass_"..colour[4], "mcl_nether:glowstone_dust",  "mcl_core:glass_"..colour[4]},
{"mcl_core:glass_"..colour[4], "mcl_core:glass_"..colour[4], "mcl_core:glass_"..colour[4]},
	},
})

end
