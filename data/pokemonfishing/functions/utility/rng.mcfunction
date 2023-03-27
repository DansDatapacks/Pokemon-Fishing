# generate random number
scoreboard players operation #pokemonfishing:rng.value pokemonfishing.temp *= #pokemonfishing:rng.multiplier pokemonfishing.data
scoreboard players operation #pokemonfishing:rng.value pokemonfishing.temp += #pokemonfishing:rng.increment pokemonfishing.data

# swap bits
scoreboard players operation #pokemonfishing:rng.bit_swap pokemonfishing.temp = #pokemonfishing:rng.value pokemonfishing.temp
scoreboard players operation #pokemonfishing:rng.bit_swap pokemonfishing.temp /= #pokemonfishing:65536 pokemonfishing.data
scoreboard players operation #pokemonfishing:rng.value pokemonfishing.temp *= #pokemonfishing:65536 pokemonfishing.data
scoreboard players operation #pokemonfishing:rng.value pokemonfishing.temp += #pokemonfishing:rng.bit_swap pokemonfishing.temp

# return output
scoreboard players operation #pokemonfishing:rng.output pokemonfishing.temp = #pokemonfishing:rng.value pokemonfishing.temp
execute if score #pokemonfishing:rng.input pokemonfishing.temp matches 1.. run scoreboard players operation #pokemonfishing:rng.output pokemonfishing.temp %= #pokemonfishing:rng.input pokemonfishing.temp