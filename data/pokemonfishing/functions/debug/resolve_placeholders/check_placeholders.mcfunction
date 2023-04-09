# executes as player

# hide feedback
function pokemonfishing:utility/feedback/hide_feedback

# check for error pokemon (placeholders)
execute store result score #pokemonfishing:debug.resolve_placeholders.has_placeholders pokemonfishing.temp run clear @s minecraft:barrier{PokemonFishing:{}} 0

# player has error pokemon
execute if score #pokemonfishing:debug.resolve_placeholders.has_placeholders pokemonfishing.temp matches 1.. run function pokemonfishing:debug/resolve_placeholders/init_placeholder_iteration

# reset temp scores
scoreboard players reset #pokemonfishing:debug.resolve_placeholders.has_placeholders pokemonfishing.temp