scoreboard players operation &compare infectedID = @s infectedID
tag @s add this
execute as @e[type=husk] if score &compare infectedID = @s infectedID run tp @n[type=mannequin,tag=this] @s
tag @s remove this