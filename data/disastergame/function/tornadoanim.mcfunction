scoreboard players add @s timer 1
execute store result entity @s transformation.translation[0] float 0.1 run scoreboard players get @s timer
execute store result entity @s transformation.translation[1] float 0.2 run scoreboard players get @s timer
rotate @s ~18 ~
data modify entity @s start_interpolation set value -1
execute as @s[scores={timer=150..}] on passengers run kill @s
kill @s[scores={timer=150..}]