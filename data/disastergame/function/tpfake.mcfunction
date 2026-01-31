scoreboard players operation &compare infectedID = @s infectedID
execute as @e[type=vindicator] if score &compare infectedID = @s infectedID run tag @s add controller
tp @s @n[type=vindicator,tag=controller]
execute unless entity @n[type=vindicator,tag=controller] run kill @s
tag @n[type=vindicator,tag=controller] remove controller