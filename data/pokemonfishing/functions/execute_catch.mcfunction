# executes as placeholder catch item

# get pokemon
execute store result score #pokemonfishing:pokemon.id pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.PokemonID 1
execute store result score #pokemonfishing:pokemon.max_level pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.Max_Level 1
execute store result score #pokemonfishing:pokemon.min_level pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.Min_Level 1

# generate random level
scoreboard players operation #pokemonfishing:rng.input pokemonfishing.temp = #pokemonfishing:pokemon.max_level pokemonfishing.temp
scoreboard players operation #pokemonfishing:rng.input pokemonfishing.temp -= #pokemonfishing:pokemon.min_level pokemonfishing.temp
function pokemonfishing:utility/rng
scoreboard players operation #pokemonfishing:pokemon.level pokemonfishing.temp = #pokemonfishing:rng.output pokemonfishing.temp
scoreboard players operation #pokemonfishing:pokemon.level pokemonfishing.temp += #pokemonfishing:pokemon.min_level pokemonfishing.temp
scoreboard players add #pokemonfishing:pokemon.level pokemonfishing.temp 1

# determine shiny chance
scoreboard players set #pokemonfishing:rng.input pokemonfishing.temp 8192
function pokemonfishing:utility/rng
scoreboard players operation #pokemonfishing:pokemon.shiny pokemonfishing.temp = #pokemonfishing:rng.output pokemonfishing.temp
scoreboard players add #pokemonfishing:pokemon.shiny pokemonfishing.temp 1

# spawn shiny pokemon
execute if score #pokemonfishing:pokemon.shiny pokemonfishing.temp matches 8192 run function pokemonfishing:spawn_pokemon_shiny

# spawn pokemon
execute unless score #pokemonfishing:pokemon.shiny pokemonfishing.temp matches 8192 run function pokemonfishing:spawn_pokemon

# tag pokemon
tag @e[type=cobblemon:pokemon,sort=nearest,limit=1] add pokemonfishing.pokemon.execute

# no pokemon found
execute unless entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] run scoreboard players reset #pokemonfishing:pokemon.spawned pokemonfishing.temp

# apply motion
data modify entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] Motion set from entity @s Motion

# apply rotation
execute facing entity @p feet run tp ~ ~ ~
data modify entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] Rotation set from entity @s Rotation

# tag as done
tag @s add pokemonfishing.placeholder.done

# delete placeholder item
execute if score #pokemonfishing:pokemon.spawned pokemonfishing.temp matches 1.. run kill @s

# notify of error
execute unless score #pokemonfishing:pokemon.spawned pokemonfishing.temp matches 1.. run tellraw @a [{"text":"Pokémon Fishing", "color": "gray"}, {"text":" | ", "color": "dark_gray"}, {"text":"ERROR", "color": "red", "bold": true}, {"text":": ", "color": "white"}, {"text":"I", "color": "aqua"}, {"score":{"name":"#pokemonfishing:pokemon.id","objective":"pokemonfishing.temp"}, "color": "aqua"}, {"text":"L", "color": "aqua"}, {"score":{"name":"#pokemonfishing:pokemon.level","objective":"pokemonfishing.temp"}, "color": "aqua"}, {"text":"S", "color": "aqua"}, {"score":{"name":"#pokemonfishing:pokemon.shiny","objective":"pokemonfishing.temp"}, "color": "aqua"}]
execute unless score #pokemonfishing:pokemon.spawned pokemonfishing.temp matches 1.. run tellraw @a [{"text":"Pokémon Fishing", "color": "gray"}, {"text":" | ", "color": "dark_gray"}, {"text":"Please Check Logs and Report Issue", "color": "white"} ]

# remove temp tags
tag @e[type=cobblemon:pokemon,tag=pokemonfishing.pokemon.execute] remove pokemonfishing.pokemon.execute

# reset temp scores
scoreboard players reset #pokemonfishing:pokemon.id pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.shiny pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.max_level pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.min_level pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.level pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.spawned pokemonfishing.temp