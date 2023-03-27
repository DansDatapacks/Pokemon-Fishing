# runs globally, scheduled after a pokemon catch

# find item
execute as @e[type=item,sort=nearest] if data entity @s Item.tag.PokemonFishing run tag @s add pokemonfishing.found_placeholder

# item found
execute as @e[type=item,sort=nearest,tag=pokemonfishing.found_placeholder,limit=1] at @s run function pokemonfishing:execute_catch