# executes as placeholder catch item (after spawning pokemon)

# debug
scoreboard players set #pokemonfishing:error_code pokemonfishing.temp 2

# find pokemon
tag @e[type=cobblemon:pokemon,tag=!pokemonfishing.ignore,sort=nearest,limit=1,distance=..3] add pokemonfishing.pokemon.execute

# pokemon found
execute if entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] run function pokemonfishing:catch/init_pokemon

# no pokemon found
execute unless entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] run tag @a add pokemonfishing.broadcast_target
execute unless entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] run function pokemonfishing:debug/message/broadcast_error

# remove temp tags
tag @e[type=cobblemon:pokemon,tag=pokemonfishing.pokemon.execute] remove pokemonfishing.pokemon.execute