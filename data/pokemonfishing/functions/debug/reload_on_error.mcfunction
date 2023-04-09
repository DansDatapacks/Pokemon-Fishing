# executes globally

# generate error message
data remove storage pokemonfishing:message error.info
data modify storage pokemonfishing:message error.info append value '{"text":"Server bug detected. Running /reload...", "color": "red"}'

# create error code
function pokemonfishing:debug/message/create_error_code

# notify
tellraw @a[tag=pokemonfishing.broadcast_target] [{"text": "\n"}, {"text": "| ", "color": "dark_gray"}, {"storage":"pokemonfishing:message","nbt":"version[]","interpret":true,"separator":""}]
tellraw @a[tag=pokemonfishing.broadcast_target] [{"text": "| ", "color": "dark_gray"}, {"text":"Error: ", "color": "red"}, {"storage":"pokemonfishing:message","nbt":"error.info[]","interpret":true,"separator":""}, {"text": " (", "color": "gray"}, {"storage":"pokemonfishing:message","nbt":"error.code[]","interpret":true,"separator":""}, {"text": ")", "color":"gray"}]

# sound
execute as @a[tag=pokemonfishing.broadcast_target] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5

# remove target tag
tag @a remove pokemonfishing.broadcast_target

# reload
reload