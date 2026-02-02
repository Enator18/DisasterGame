execute at @a run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute at @e[tag=alive] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["swap"]}
execute at @e[tag=alive] run rotate @n[tag=swap] ~ ~
execute as @e[tag=alive,sort=random] at @s run function disastergame:swaptp
kill @e[tag=swap]
execute at @e[tag=alive] run particle poof ~ ~1 ~ .25 .4 .25 0 25
title @a clear
execute store result score &shuffle timer run random value 600..1500