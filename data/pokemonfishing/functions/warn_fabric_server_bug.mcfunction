# runs globally (after failed to spawn pokemon)

# set error code
scoreboard players set #pokemonfishing:error_code pokemonfishing.temp 3

# broadcast target
tag @a add pokemonfishing.broadcast_target

# warn if reload on error is off
execute unless score #pokemonfishing:option.reload_on_error pokemonfishing.data matches 1.. run function pokemonfishing:broadcast_error

# broadcast if reload on error is on
execute if score #pokemonfishing:option.reload_on_error pokemonfishing.data matches 1.. run function pokemonfishing:reload_on_error