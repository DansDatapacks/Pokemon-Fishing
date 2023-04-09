# reset
scoreboard players set #pokemonfishing:rng.output pokemonfishing.temp 0

# randomize using predicates (50%)
execute if predicate pokemonfishing:rng/50 run scoreboard players set #pokemonfishing:rng.output pokemonfishing.temp -2147483648
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 1073741824
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 536870912
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 268435456
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 134217728
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 67108864
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 33554432
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 16777216
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 8388608
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 4194304
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 2097152
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 1048576
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 524288
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 262144
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 131072
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 65536
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 32768
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 16384
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 8192
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 4096
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 2048
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 1024
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 512
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 256
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 128
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 64
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 32
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 16
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 8
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 4
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 2
execute if predicate pokemonfishing:rng/50 run scoreboard players add #pokemonfishing:rng.output pokemonfishing.temp 1

# output
execute if score #pokemonfishing:rng.input pokemonfishing.temp matches 1.. run scoreboard players operation #pokemonfishing:rng.output pokemonfishing.temp %= #pokemonfishing:rng.input pokemonfishing.temp