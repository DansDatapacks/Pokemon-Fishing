# executes globally every 10 ticks (half a second)

# tag pokemon
tag @e[type=cobblemon:pokemon,tag=!pokemonfishing.ignore] add pokemonfishing.ignore

# schedule loop
schedule function pokemonfishing:loop/every_10_ticks 10t replace