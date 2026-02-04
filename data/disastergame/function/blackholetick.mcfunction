execute store result entity @s Rotation[0] float 0.001 run random value -180000..180000
execute store result entity @s Rotation[1] float 0.001 run random value -90000..90000
scoreboard players reset &recursiveLimit temp
function disastergame:raycast
execute as @e[type=falling_block] at @s run function disastergame:pullblock