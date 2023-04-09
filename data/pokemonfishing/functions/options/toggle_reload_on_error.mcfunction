# executes as player

# toggle off
execute if score #pokemonfishing:option.reload_on_error pokemonfishing.data matches 1.. run scoreboard players set #pokemonfishing:new_option_value pokemonfishing.temp 0

# toggle on
execute unless score #pokemonfishing:option.reload_on_error pokemonfishing.data matches 1.. run scoreboard players set #pokemonfishing:new_option_value pokemonfishing.temp 1

# set value
scoreboard players operation #pokemonfishing:option.reload_on_error pokemonfishing.data = #pokemonfishing:new_option_value pokemonfishing.temp

# reset temp score
scoreboard players reset #pokemonfishing:new_option_value pokemonfishing.temp

# hide admin commands log
function pokemonfishing:utility/feedback/hide_feedback

# notify
tellraw @s [{"text": "\n"}, {"text": "| ", "color": "dark_gray"}, {"storage":"pokemonfishing:message","nbt":"version[]","interpret":true,"separator":""}]

# toggled on
execute if score #pokemonfishing:option.reload_on_error pokemonfishing.data matches 1.. run tellraw @s [{"text": "| ", "color": "dark_gray"}, {"text":"Auto Reload on Error Toggled ON", "color":"yellow"}]
execute if score #pokemonfishing:option.reload_on_error pokemonfishing.data matches 1.. run playsound cobblemon:pc.on master @s ~ ~ ~ 1 1.5

# toggled off
execute unless score #pokemonfishing:option.reload_on_error pokemonfishing.data matches 1.. run tellraw @s [{"text": "| ", "color": "dark_gray"}, {"text":"Auto Reload on Error Toggled OFF", "color":"gray"}]
execute unless score #pokemonfishing:option.reload_on_error pokemonfishing.data matches 1.. run playsound cobblemon:pc.off master @s ~ ~ ~ 1 1.5