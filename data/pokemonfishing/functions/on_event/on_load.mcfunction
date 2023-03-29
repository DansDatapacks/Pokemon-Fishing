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

# set versioning
scoreboard players set #pokemonfishing:version.major pokemonfishing.data 1
scoreboard players set #pokemonfishing:version.minor pokemonfishing.data 1
scoreboard players set #pokemonfishing:version.hotfix pokemonfishing.data 1

# generate name and version message
data remove storage pokemonfishing:message version
data modify storage pokemonfishing:message version append value '{"text":"Pokémon Fishing v", "color": "gray"}'
data modify storage pokemonfishing:message version append value '{"score":{"name":"#pokemonfishing:version.major","objective":"pokemonfishing.data"}, "color": "gray"}'
data modify storage pokemonfishing:message version append value '{"text":".", "color": "gray"}'
data modify storage pokemonfishing:message version append value '{"score":{"name":"#pokemonfishing:version.minor","objective":"pokemonfishing.data"}, "color": "gray"}'
execute if score #pokemonfishing:version.hotfix pokemonfishing.data matches 1.. run data modify storage pokemonfishing:message version append value '{"text":".", "color": "gray"}'
execute if score #pokemonfishing:version.hotfix pokemonfishing.data matches 1.. run data modify storage pokemonfishing:message version append value '{"score":{"name":"#pokemonfishing:version.hotfix","objective":"pokemonfishing.data"}, "color": "gray"}'

# check for fabric server bug
function pokemonfishing:detect_fabric_server_bug

# reset on join event
advancement revoke @a only pokemonfishing:on_join

# run loops
function pokemonfishing:loop/every_10_ticks