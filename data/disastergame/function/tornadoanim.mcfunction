scoreboard players add @s timer 1
execute store result entity @s transformation.translation[0] float 0.075 run scoreboard players get @s timer
rotate @s ~18 ~
data modify entity @s start_interpolation set value -1