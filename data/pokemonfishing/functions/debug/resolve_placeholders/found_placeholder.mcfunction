# execute as and at player

# spawn item with the same data
summon minecraft:item ~ ~ ~ {PickupDelay:1000,Tags:["pokemonfishing.debug.resolve_placeholders.placeholder_spawn","global.ignore"],Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4150000}}}
data modify entity @e[type=minecraft:item,tag=pokemonfishing.debug.resolve_placeholders.placeholder_spawn,limit=1,sort=nearest] Item set from storage pokemonfishing:debug.resolve_placeholders player_inventory[0]

# calculate new amount (using original placeholders data and new data based on how many placeholders the player had)
execute store result score #pokemonfishing:debug.resolve_placeholders.placeholder.amount pokemonfishing.temp run data get storage pokemonfishing:debug.resolve_placeholders player_inventory[0].tag.PokemonFishing.amount
execute unless score #pokemonfishing:debug.resolve_placeholders.placeholder.amount pokemonfishing.temp matches 1.. run scoreboard players set #pokemonfishing:debug.resolve_placeholders.placeholder.amount pokemonfishing.temp 1
execute store result score #pokemonfishing:debug.resolve_placeholders.placeholder.amount_new pokemonfishing.temp run data get storage pokemonfishing:debug.resolve_placeholders player_inventory[0].Count
scoreboard players operation #pokemonfishing:debug.resolve_placeholders.placeholder.amount pokemonfishing.temp *= #pokemonfishing:debug.resolve_placeholders.placeholder.amount_new pokemonfishing.temp

# set new amount
execute store result entity @e[type=minecraft:item,tag=pokemonfishing.debug.resolve_placeholders.placeholder_spawn,limit=1,sort=nearest] Item.tag.PokemonFishing.amount int 1 run scoreboard players get #pokemonfishing:debug.resolve_placeholders.placeholder.amount pokemonfishing.temp

# make it spawn a pokemon
function pokemonfishing:catch/detect_catch

# reset temp scores
scoreboard players reset #pokemonfishing:debug.resolve_placeholders.placeholder.amount pokemonfishing.temp
scoreboard players reset #pokemonfishing:debug.resolve_placeholders.placeholder.amount_new pokemonfishing.temp