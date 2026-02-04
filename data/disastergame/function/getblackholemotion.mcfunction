tp @s ^ ^ ^0.02
data modify storage disastergame:temp Motion set from entity @s Pos
execute store result score &temp MotionX run data get entity @s Pos[0] 10000
execute store result score &temp MotionY run data get entity @s Pos[1] 10000
execute store result score &temp MotionZ run data get entity @s Pos[2] 10000
kill @s