summon block_display ~ ~ ~ {Tags:["serpent","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.7071068f,0f,0f,0.7071068f],translation:[-1f,1f,-1f],scale:[2f,2f,2f]},block_state:{Name:"minecraft:fire"}}
scoreboard players reset @s timer
execute as @e[type=block_display,tag=serpent,tag=new] at @s at @n[type=phantom] run rotate @s ~180 ~
tag @e[type=block_display,tag=serpent] remove new
execute at @e[type=block_display,tag=serpent,sort=random,limit=1] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["new"]}
execute store result entity @e[type=falling_block,tag=new,limit=1] Motion[0] double 0.001 run random value -500..500
execute store result entity @e[type=falling_block,tag=new,limit=1] Motion[1] double 0.001 run random value 200..500
execute store result entity @e[type=falling_block,tag=new,limit=1] Motion[2] double 0.001 run random value -500..500
tag @e[type=falling_block,tag=new] remove new
execute at @p[tag=alive] run summon marker ~ ~30 ~ {Tags:["serpent_target"]}
data modify entity @n[type=phantom,tag=serpent] anchor_pos set from entity @n[type=marker,tag=serpent_target] Pos
kill @n[type=marker,tag=serpent_target]