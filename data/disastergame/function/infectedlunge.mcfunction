tp @s ~ ~ ~ facing entity @p
summon marker ~ ~ ~ {Tags:["direction"]}
execute at @s as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function disastergame:getmotion
data modify entity @s Motion set from storage disastergame:temp Motion
execute store result score @s temp run data get entity @s Motion[1] 1000
scoreboard players operation @s temp += &500 constants
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s temp

tag @e[tag=projectile] remove projectile
tag @s add jumping