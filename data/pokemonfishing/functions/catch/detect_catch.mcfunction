# executes globally (scheduled a tick after a pokemon catch in order to be able to find placeholder item)

# find item
execute as @e[type=item,sort=nearest,tag=!pokemonfishing.placeholder.done] if data entity @s Item.tag.PokemonFishing run tag @s add pokemonfishing.placeholder.found

# item found
execute as @e[type=item,sort=nearest,tag=pokemonfishing.placeholder.found,limit=1] run function pokemonfishing:catch/init_iterate_catches