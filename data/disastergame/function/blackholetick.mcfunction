execute store result storage disastergame:temp radius double 0.1 run scoreboard players get @s radius
execute store result storage disastergame:temp quadRadius double 0.4 run scoreboard players get @s radius
function disastergame:scaleblackhole with storage disastergame:temp
function disastergame:pullblocks
scoreboard players reset &recursiveCount2 temp
scoreboard players add &playerPull timer 1
execute as @e[type=falling_block] at @s run function disastergame:pullblock
execute if score &playerPull timer matches 1 as @a[tag=alive] at @s facing entity @n[type=armor_stand,tag=blackhole] feet run function player_motion:api/launch_looking
execute if score &playerPull timer matches 2 run scoreboard players reset &playerPull timer
execute as @e[tag=blackhole_display] at @s run rotate @s ~2 ~