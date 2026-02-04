function disastergame:startpullblock
scoreboard players set &blocks temp 0
execute as @e[type=falling_block] run scoreboard players add &blocks temp 1
execute if score &blocks temp matches ..40 run function disastergame:pullblocks