scoreboard players add &recursiveCount temp 1
execute unless score &recursiveCount temp >= @s raycastLimit if block ~ ~ ~ #disastergame:blackholeignore positioned ^ ^ ^0.5 run function disastergame:raycast
execute unless block ~ ~ ~ #disastergame:blackholeignore unless block ~ ~ ~ minecraft:barrier run function disastergame:converttofalling