# runs globally, scheduled after a pokemon catch

# find item
execute as @e[type=item,sort=nearest,tag=!pokemonfishing.placeholder.done] if data entity @s Item.tag.PokemonFishing run tag @s add pokemonfishing.placeholder.found

# item found
execute as @e[type=item,sort=nearest,tag=pokemonfishing.placeholder.found,limit=1] at @s run function pokemonfishing:execute_placeholder