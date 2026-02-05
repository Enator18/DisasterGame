scoreboard players add @s mass 50
execute if score @s volume >= @s mass run return 1

scoreboard players add @s radius 1
scoreboard players operation @s volume = @s radius
scoreboard players operation @s volume *= @s radius
scoreboard players operation @s volume *= @s radius