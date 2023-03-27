# executes as placeholder catch item

# get pokemon
execute store result score #pokemonfishing:pokemon.id pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.PokemonID 1
execute store result score #pokemonfishing:pokemon.max_level pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.Max_Level 1
execute store result score #pokemonfishing:pokemon.min_level pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.Min_Level 1

# determine shiny chance
scoreboard players set #pokemonfishing:rng.input pokemonfishing.temp 8192
function pokemonfishing:utility/rng
scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 1

# spawn shiny pokemon
execute if score #pokemonfishing:rng.output pokemonfishing.temp matches 8192 run function pokemonfishing:spawn_pokemon_shiny

# spawn pokemon
execute unless score #pokemonfishing:rng.output pokemonfishing.temp matches 8192 run function pokemonfishing:spawn_pokemon

# tag pokemon
tag @e[type=cobblemon:pokemon,sort=nearest,limit=1] add pokemonfishing.pokemon.execute

# apply motion
data modify entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] Motion set from entity @s Motion

# delete placeholder item
execute if score #pokemonfishing:pokemon.id pokemonfishing.temp matches 0.. run kill @s

# remove temp tags
tag @e[type=cobblemon:pokemon,tag=pokemonfishing.pokemon.execute] remove pokemonfishing.pokemon.execute

# reset temp scores
scoreboard players reset #pokemonfishing:pokemon.id pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.max_level pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.min_level pokemonfishing.temp