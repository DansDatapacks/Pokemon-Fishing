# executes as placeholder item

# get pokemon amount
execute store result score #pokemonfishing:placeholder.amount pokemonfishing.temp run data get entity @s Item.tag.PokemonFishing.amount

# begin iteration
function pokemonfishing:catch/iterate_catches

# reset temp scores
scoreboard players reset #pokemonfishing:placeholder.amount pokemonfishing.temp