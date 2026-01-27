scoreboard players operation &compare infectedID = @s infectedID
tag @s add this
execute as @e[type=husk] if score &compare infected = @s infected run tp @n[type=mannequin,tag=this] @s
tag @s remove this