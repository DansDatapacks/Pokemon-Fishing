# executes globally or as placeholder item

# generate error message
data remove storage pokemonfishing:message error.info
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 1 run data modify storage pokemonfishing:message error.info append value '{"text":"Failed to spawn Pokémon", "color": "red"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 2 run data modify storage pokemonfishing:message error.info append value '{"text":"Failed to find Pokémon", "color": "red"}'
execute if score #pokemonfishing:error_code pokemonfishing.temp matches 3 run data modify storage pokemonfishing:message error.info append value '{"text":"Server bug detected. Run `/reload` in console.", "color": "red"}'

# create error code
function pokemonfishing:debug/message/create_error_code

# notify
tellraw @a[tag=pokemonfishing.broadcast_target] [{"text": "\n"}, {"text": "| ", "color": "dark_gray"}, {"storage":"pokemonfishing:message","nbt":"version[]","interpret":true,"separator":""}]
tellraw @a[tag=pokemonfishing.broadcast_target] [{"text": "| ", "color": "dark_gray"}, {"text":"Error: ", "color": "red"}, {"storage":"pokemonfishing:message","nbt":"error.info[]","interpret":true,"separator":""}, {"text": " (", "color": "gray"}, {"storage":"pokemonfishing:message","nbt":"error.code[]","interpret":true,"separator":""}, {"text": ")", "color":"gray"}]
tellraw @a[tag=pokemonfishing.broadcast_target] [{"text": "| ", "color": "dark_gray"}, {"text":"Please Check Logs and Report Issue", "color": "white"} ]

# sound
execute as @a[tag=pokemonfishing.broadcast_target] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

# remove target tag
tag @a remove pokemonfishing.broadcast_target