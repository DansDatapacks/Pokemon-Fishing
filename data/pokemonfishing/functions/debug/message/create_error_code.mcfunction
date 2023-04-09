# executes globally or as placeholder item

# reset
data remove storage pokemonfishing:message error.code

# create
data modify storage pokemonfishing:message error.code append value '{"score":{"name":"#pokemonfishing:error_code","objective":"pokemonfishing.temp"}, "color": "red"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 1..2 run data modify storage pokemonfishing:message error.code append value '{"text":"-", "color": "gray"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 1..2 run data modify storage pokemonfishing:message error.code append value '{"score":{"name":"#pokemonfishing:pokemon.id","objective":"pokemonfishing.temp"}, "color": "red"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 1..2 run data modify storage pokemonfishing:message error.code append value '{"text":"-", "color": "gray"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 1..2 run data modify storage pokemonfishing:message error.code append value '{"score":{"name":"#pokemonfishing:pokemon.level","objective":"pokemonfishing.temp"}, "color": "red"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 1..2 run data modify storage pokemonfishing:message error.code append value '{"text":"-", "color": "gray"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 1..2 run data modify storage pokemonfishing:message error.code append value '{"score":{"name":"#pokemonfishing:pokemon.shiny","objective":"pokemonfishing.temp"}, "color": "red"}'