# generate error message
data remove storage pokemonfishing:message error.info
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 1 run data modify storage pokemonfishing:message error.info append value '{"text":"Failed to spawn Pokémon", "color": "red"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 2 run data modify storage pokemonfishing:message error.info append value '{"text":"Failed to find Pokémon", "color": "red"}'

# notify
tellraw @a [{"text": "\n"}, {"text": "| ", "color": "dark_gray"}, {"storage":"pokemonfishing:message","nbt":"version[]","interpret":true,"separator":""}]
tellraw @a [{"text": "| ", "color": "dark_gray"}, {"text":"Error: ", "color": "red"}, {"storage":"pokemonfishing:message","nbt":"error.info[]","interpret":true,"separator":""}, {"text": " (", "color": "gray"}, {"score":{"name":"#pokemonfishing:error_code","objective":"pokemonfishing.temp"}, "color": "red"}, {"text":"-", "color": "gray"}, {"score":{"name":"#pokemonfishing:pokemon.id","objective":"pokemonfishing.temp"}, "color": "red"}, {"text":"-", "color": "gray"}, {"score":{"name":"#pokemonfishing:pokemon.level","objective":"pokemonfishing.temp"}, "color": "red"}, {"text":"-", "color": "gray"}, {"score":{"name":"#pokemonfishing:pokemon.shiny","objective":"pokemonfishing.temp"}, "color": "red"}, {"text": ")", "color":"gray"}]
tellraw @a [{"text": "| ", "color": "dark_gray"}, {"text":"Please Check Logs and Report Issue", "color": "white"} ]