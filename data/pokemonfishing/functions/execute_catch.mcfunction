# executes as placeholder catch item

# get pokemon
execute store result score #pokemonfishing:pokemon.id pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.PokemonID 1
execute store result score #pokemonfishing:pokemon.max_level pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.Max_Level 1
execute store result score #pokemonfishing:pokemon.min_level pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.Min_Level 1

# spawn pokemon
function pokemonfishing:spawn_pokemon

# tag pokemon
tag @e[type=cobblemon:pokemon,sort=nearest,limit=1] add pokemonfishing.pokemon.execute

# apply motion
data modify entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] Motion set from entity @s Motion

# delete placeholder item
kill @s

# remove temp tags
tag @e[type=cobblemon:pokemon,tag=pokemonfishing.pokemon.execute] remove pokemonfishing.pokemon.execute

# reset temp scores
scoreboard players reset #pokemonfishing:pokemon.id pokemonfishing.temp
scoreboard players reset #pokemonfishing:pokemon.max_level pokemonfishing.temp