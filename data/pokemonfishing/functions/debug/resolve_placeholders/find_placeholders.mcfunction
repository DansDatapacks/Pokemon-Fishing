# executes as player

# get first item in queue
data modify storage pokemonfishing:debug.resolve_placeholders placeholder set from storage pokemonfishing:debug.resolve_placeholders player_inventory[0]

# placeholder found
execute if data storage pokemonfishing:debug.resolve_placeholders placeholder.tag.PokemonFishing.PokemonID at @s run function pokemonfishing:debug/resolve_placeholders/found_placeholder

# delete from queue
data remove storage pokemonfishing:debug.resolve_placeholders player_inventory[0]

# iterate
scoreboard players remove #pokemonfishing:debug.resolve_placeholders.player_inventory_size pokemonfishing.temp 1
execute if score #pokemonfishing:debug.resolve_placeholders.player_inventory_size pokemonfishing.temp matches 1.. run function pokemonfishing:debug/resolve_placeholders/find_placeholders