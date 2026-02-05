scoreboard players add &recursiveLimit temp 1
execute unless score &recursiveLimit temp matches 40.. if block ~ ~ ~ #disastergame:blackholeignore positioned ^ ^ ^0.5 run function disastergame:raycast
execute unless block ~ ~ ~ #disastergame:blackholeignore unless block ~ ~ ~ minecraft:barrier run function disastergame:converttofalling