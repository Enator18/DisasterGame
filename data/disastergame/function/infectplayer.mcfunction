execute if entity @s[tag=alive,tag=!infected] run say infectplayer
advancement revoke @s only disastergame:infected
effect give @s[tag=alive,tag=!infected] resistance 60 255 true
playsound minecraft:entity.creaking.activate master @s[tag=alive,tag=!infected]
tag @s[tag=alive] add infected