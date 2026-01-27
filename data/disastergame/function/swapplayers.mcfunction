say swapplayers
execute at @e[tag=alive] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["swap"]}
execute at @e[tag=alive] run rotate @n[tag=swap] ~ ~
execute as @e[tag=alive,sort=random] at @s run function disastergame:swaptp
kill @e[tag=swap]