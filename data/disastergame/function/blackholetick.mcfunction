execute store result storage disastergame:temp radius double 0.00125 run scoreboard players get @s radius
execute store result storage disastergame:temp quadRadius double 0.005 run scoreboard players get @s radius
function disastergame:scaleblackhole with storage disastergame:temp
function disastergame:startpullblock
execute as @e[type=falling_block] at @s run function disastergame:pullblock
execute as @e[tag=blackhole_display] at @s run rotate @s ~2 ~
scoreboard players add @s radius 1