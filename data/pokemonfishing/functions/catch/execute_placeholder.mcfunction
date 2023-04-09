# executes as placeholder item

# debug
scoreboard players set #pokemonfishing:error_code pokemonfishing.temp 1

# get pokemon data from placeholder item
execute store result score #pokemonfishing:pokemon.id pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.PokemonID 1
execute store result score #pokemonfishing:pokemon.max_level pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.Max_Level 1
execute store result score #pokemonfishing:pokemon.min_level pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.Min_Level 1

# determine random level from data
scoreboard players operation #pokemonfishing:rng.input pokemonfishing.temp = #pokemonfishing:pokemon.max_level pokemonfishing.temp
scoreboard players operation #pokemonfishing:rng.input pokemonfishing.temp -= #pokemonfishing:pokemon.min_level pokemonfishing.temp
function pokemonfishing:utility/rng/rng
scoreboard players operation #pokemonfishing:pokemon.level pokemonfishing.temp = #pokemonfishing:rng.output pokemonfishing.temp
scoreboard players operation #pokemonfishing:pokemon.level pokemonfishing.temp += #pokemonfishing:pokemon.min_level pokemonfishing.temp
scoreboard players add #pokemonfishing:pokemon.level pokemonfishing.temp 1

# determine shiny chance
scoreboard players set #pokemonfishing:rng.input pokemonfishing.temp 8192
function pokemonfishing:utility/rng/rng
scoreboard players operation #pokemonfishing:pokemon.shiny pokemonfishing.temp = #pokemonfishing:rng.output pokemonfishing.temp
scoreboard players add #pokemonfishing:pokemon.shiny pokemonfishing.temp 1

# spawn shiny pokemon
execute if score #pokemonfishing:pokemon.shiny pokemonfishing.temp matches 8192 run function pokemonfishing:spawn_pokemon/pokemon_shiny

# spawn pokemon
execute unless score #pokemonfishing:pokemon.shiny pokemonfishing.temp matches 8192 run function pokemonfishing:spawn_pokemon/pokemon

# pokemon spawned
execute if score #pokemonfishing:pokemon.spawned pokemonfishing.temp matches 1 run function pokemonfishing:catch/find_pokemon

# pokemon failed to spawn
execute unless score #pokemonfishing:pokemon.spawned pokemonfishing.temp matches 1 run tag @a add pokemonfishing.broadcast_target
execute unless score #pokemonfishing:pokemon.spawned pokemonfishing.temp matches 1 run function pokemonfishing:debug/message/broadcast_error

# reset temp scores
scoreboard players reset #pokemonfishing:error_code pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.id pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.shiny pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.max_level pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.min_level pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.level pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.spawned pokemonfishing.temp