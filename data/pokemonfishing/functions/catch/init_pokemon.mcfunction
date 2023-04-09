# executes as placeholder catch item (after finding pokemon)

# apply motion
data modify entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] Motion set from entity @s Motion
execute store result entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] Motion[1] double 1.5 run data get entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] Motion[1] 1

# apply rotation
execute facing entity @p feet run tp ~ ~ ~
data modify entity @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] Rotation set from entity @s Rotation

# ignore this pokemon now
tag @e[type=cobblemon:pokemon,sort=nearest,tag=pokemonfishing.pokemon.execute,limit=1] add pokemonfishing.ignore

# delete placeholder item (only after everything has succeeded and there are no more pokemon to spawn)
execute if score #pokemonfishing:pokemon.spawned pokemonfishing.temp matches 1.. unless score #pokemonfishing:placeholder.amount pokemonfishing.temp matches 2.. run kill @s