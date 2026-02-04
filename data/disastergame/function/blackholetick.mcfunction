execute store result storage disastergame:temp arg1 int 1 run random value -1000..1000
execute store result storage disastergame:temp arg2 int 1 run random value -1000..1000
execute store result storage disastergame:temp arg3 int 1 run random value -1000..1000
function disastergame:lookat with storage disastergame:temp
scoreboard players reset &recursiveLimit temp
function disastergame:raycast
execute as @e[type=falling_block] at @s run function disastergame:pullblock