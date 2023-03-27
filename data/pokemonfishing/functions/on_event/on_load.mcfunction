# runs on every load or reload

# meta
scoreboard objectives add pokemonfishing.data dummy
scoreboard objectives add pokemonfishing.temp dummy

# rng
scoreboard players set #pokemonfishing:65536 pokemonfishing.data 65536
scoreboard players set #pokemonfishing:rng.multiplier pokemonfishing.data 1664525
scoreboard players set #pokemonfishing:rng.increment pokemonfishing.data 1013904223

# init rng
scoreboard players set #pokemonfishing:rng.input pokemonfishing.temp 0
function pokemonfishing:utility/rng_init
scoreboard players operation #pokemonfishing:rng.value pokemonfishing.temp = #pokemonfishing:rng.output pokemonfishing.temp