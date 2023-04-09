# check if logging admin commands is enabled
execute store result score #pokemonfishing:gamerule.log_enabled pokemonfishing.temp run gamerule sendCommandFeedback

# if enabled, turn it off then queue it to turn back on in the next tick
execute if score #pokemonfishing:gamerule.log_enabled pokemonfishing.temp matches 1.. run gamerule sendCommandFeedback false
execute if score #pokemonfishing:gamerule.log_enabled pokemonfishing.temp matches 1.. run schedule function pokemonfishing:utility/feedback/show_feedback 1t