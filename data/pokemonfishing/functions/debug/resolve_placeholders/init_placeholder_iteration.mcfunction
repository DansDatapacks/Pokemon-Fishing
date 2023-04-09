# executes as player

# get inventory
data modify storage pokemonfishing:debug.resolve_placeholders player_inventory set from entity @s Inventory

# get inventory size
execute store result score #pokemonfishing:debug.resolve_placeholders.player_inventory_size pokemonfishing.temp run data get storage pokemonfishing:debug.resolve_placeholders player_inventory

# iterate
function pokemonfishing:debug/resolve_placeholders/find_placeholders

# delete all placeholder items
clear @s minecraft:barrier{PokemonFishing:{}}

# reset temp scores
scoreboard players reset #pokemonfishing:debug.resolve_placeholders.player_inventory_size pokemonfishing.temp

# reset temp storage
data remove storage pokemonfishing:debug.resolve_placeholders player_inventory
data remove storage pokemonfishing:debug.resolve_placeholders placeholder