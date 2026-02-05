scoreboard players add @s mass 12500
execute if score @s volume >= @s mass run return 1

scoreboard players add @s radius 1
scoreboard players set @s volume 419
scoreboard players operation @s volume *= @s radius
scoreboard players operation @s volume *= @s radius
scoreboard players operation @s volume *= @s radius