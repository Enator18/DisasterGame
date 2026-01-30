scoreboard players operation &compare infectedID = @s infectedID
execute as @e[type=husk] if score &compare infectedID = @s infectedID run tag @s add controller
tp @s @n[type=husk,tag=controller]
execute unless entity @n[type=husk,tag=controller] run kill @s
tag @n[type=husk,tag=controller] remove controller