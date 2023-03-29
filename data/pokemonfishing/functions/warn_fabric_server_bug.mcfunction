# runs globally (after failed to spawn pokemon)

# set error code
scoreboard players set #pokemonfishing:error_code pokemonfishing.temp 3

# warn
execute as @a run function pokemonfishing:broadcast_error