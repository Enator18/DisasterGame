rotate @s facing entity @n[type=armor_stand,tag=blackhole]
summon marker ~ ~ ~ {Tags:["direction"]}
execute at @s as @n[tag=direction] positioned 0.0 0.0 0.0 run function disastergame:getblackholemotion
execute store result score @s MotionX run data get entity @s Pos[0] 10000
execute store result score @s MotionY run data get entity @s Pos[1] 10000
execute store result score @s MotionZ run data get entity @s Pos[2] 10000
scoreboard players operation @s MotionX += &temp MotionX
scoreboard players operation @s MotionY += &temp MotionY
scoreboard players operation @s MotionZ += &temp MotionZ
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s MotionX
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s MotionY
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s MotionZ
execute if entity @n[type=armor_stand,tag=blackhole,distance=..0.5] run kill @s