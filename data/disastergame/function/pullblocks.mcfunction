scoreboard players add &recursiveLimit2 temp 1
scoreboard players set &blocks temp 0
execute as @e[type=falling_block] run scoreboard players add &blocks temp 1
execute if score &blocks temp matches ..60 run function disastergame:startpullblock
execute if score &recursiveLimit temp matches ..30 if score &blocks temp matches ..60 run function disastergame:pullblocks