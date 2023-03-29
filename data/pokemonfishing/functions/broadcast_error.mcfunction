# generate error message
data remove storage pokemonfishing:message error.info
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 1 run data modify storage pokemonfishing:message error.info append value '{"text":"Failed to spawn Pokémon", "color": "red"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 2 run data modify storage pokemonfishing:message error.info append value '{"text":"Failed to find Pokémon", "color": "red"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 3 run data modify storage pokemonfishing:message error.info append value '{"text":"Server bug detected. Run `/reload` in console.", "color": "red"}'

# create error code
function pokemonfishing:create_error_code

# notify
tellraw @s [{"text": "\n"}, {"text": "| ", "color": "dark_gray"}, {"storage":"pokemonfishing:message","nbt":"version[]","interpret":true,"separator":""}]
tellraw @s [{"text": "| ", "color": "dark_gray"}, {"text":"Error: ", "color": "red"}, {"storage":"pokemonfishing:message","nbt":"error.info[]","interpret":true,"separator":""}, {"text": " (", "color": "gray"}, {"storage":"pokemonfishing:message","nbt":"error.code[]","interpret":true,"separator":""}, {"text": ")", "color":"gray"}]
tellraw @s [{"text": "| ", "color": "dark_gray"}, {"text":"Please Check Logs and Report Issue", "color": "white"} ]