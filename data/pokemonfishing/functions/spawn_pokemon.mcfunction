# generate random level
scoreboard players operation #pokemonfishing:rng.input pokemonfishing.temp = #pokemonfishing:pokemon.max_level pokemonfishing.temp
scoreboard players operation #pokemonfishing:rng.input pokemonfishing.temp -= #pokemonfishing:pokemon.min_level pokemonfishing.temp
function pokemonfishing:utility/rng
scoreboard players operation #pokemonfishing:pokemon.level pokemonfishing.temp = #pokemonfishing:rng.output pokemonfishing.temp
scoreboard players operation #pokemonfishing:pokemon.level pokemonfishing.temp += #pokemonfishing:pokemon.min_level pokemonfishing.temp
scoreboard players add #pokemonfishing:pokemon.level pokemonfishing.temp 1

# 60 poliwag
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 60 run function pokemonfishing:spawn_pokemon/60_poliwag

# 61 poliwhirl
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 61 run function pokemonfishing:spawn_pokemon/61_poliwhirl

# 72 tentacool
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 72 run function pokemonfishing:spawn_pokemon/72_tentacool

# 73 tentacruel
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 73 run function pokemonfishing:spawn_pokemon/73_tentacruel

# 90 shellder
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 90 run function pokemonfishing:spawn_pokemon/90_shellder

# 98 krabby
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 98 run function pokemonfishing:spawn_pokemon/98_krabby

# 99 kingler
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 99 run function pokemonfishing:spawn_pokemon/99_kingler

# 116 horsea
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 116 run function pokemonfishing:spawn_pokemon/116_horsea

# 117 seadra
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 117 run function pokemonfishing:spawn_pokemon/117_seadra

# 118 goldeen
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 118 run function pokemonfishing:spawn_pokemon/118_goldeen

# 119 seaking
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 119 run function pokemonfishing:spawn_pokemon/119_seaking

# 120 staryu
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 120 run function pokemonfishing:spawn_pokemon/120_staryu

# 129 magikarp
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 129 run function pokemonfishing:spawn_pokemon/129_magikarp

# 130 gyrados
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 130 run function pokemonfishing:spawn_pokemon/130_gyrados

# 147 dratini
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 147 run function pokemonfishing:spawn_pokemon/147_dratini

# 148 dragonair
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 148 run function pokemonfishing:spawn_pokemon/148_dragonair

# 230 kingdra
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 230 run function pokemonfishing:spawn_pokemon/230_kingdra

# 318 carvanha
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 318 run function pokemonfishing:spawn_pokemon/318_carvanha

# 319 sharpedo
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 319 run function pokemonfishing:spawn_pokemon/319_sharpedo

# 320 wailmer
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 320 run function pokemonfishing:spawn_pokemon/320_wailmer

# 321 wailord
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 321 run function pokemonfishing:spawn_pokemon/321_wailord

# 370 luvdisc
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 370 run function pokemonfishing:spawn_pokemon/370_luvdisc

# 550 basculin blue stripe
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 550 if data entity @s {Item:{tag:{PokemonFishing:{fish_stripes:"blue"}}}} run function pokemonfishing:spawn_pokemon/550_basculin_blue_stripe

# 550 basculin red stripe
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 550 if data entity @s {Item:{tag:{PokemonFishing:{fish_stripes:"red"}}}} run function pokemonfishing:spawn_pokemon/550_basculin_red_stripe

# reset temp variables
scoreboard players reset #pokemonfishing:pokemon.level pokemonfishing.temp