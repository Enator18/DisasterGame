scoreboard players add @s radius 1
scoreboard players operation @s raycastLimit = @s radius
scoreboard players operation @s raycastLimit /= &5 constants
scoreboard players add @s raycastLimit 38
scoreboard players operation @s volume = @s radius
scoreboard players operation @s volume *= @s radius
scoreboard players operation @s volume *= @s radius
data modify entity @s start_interpolation set value -1