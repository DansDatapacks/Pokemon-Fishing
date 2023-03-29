# runs globally

# reset temp scores
scoreboard players reset #pokemonfishing:fabric_bug pokemonfishing.temp

# try to spawn a pokemon
execute positioned ~ -1000 ~ store success score #pokemonfishing:fabric_bug pokemonfishing.temp run spawnpokemon magikarp

# failed
execute unless score #pokemonfishing:fabric_bug pokemonfishing.temp matches 1 as @a run function pokemonfishing:warn_fabric_server_bug