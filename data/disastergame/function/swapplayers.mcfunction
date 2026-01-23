execute at @e[tag=alive] run summon marker ~ ~ ~ {Tags:["swap"]}
execute as @e[tag=alive,sort=random] at @s run function disastergame:swaptp
kill @e[tag=swap]