# executes as placeholder item

# begin spawn
execute at @s run function pokemonfishing:catch/execute_placeholder

# iterate
scoreboard players remove #pokemonfishing:placeholder.amount pokemonfishing.temp 1
execute if score #pokemonfishing:placeholder.amount pokemonfishing.temp matches 1.. run function pokemonfishing:catch/iterate_catches