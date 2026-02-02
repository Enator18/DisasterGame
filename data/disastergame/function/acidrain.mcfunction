summon marker ~ ~ ~ {Tags:["acid"]}
spreadplayers 66.0 65.0 10 64 false @e[type=marker,tag=acid]
execute at @e[type=marker,tag=acid] run setblock ~ ~-1 ~ air destroy
execute at @e[type=marker,tag=acid] run playsound minecraft:block.fire.extinguish master @a ~ ~-1 ~ .2 .7
execute at @e[type=marker,tag=acid] run particle minecraft:cloud ~ ~-0.5 ~ .3 .3 .3 0 10 force
kill @e[tag=acid]
execute as @a at @s positioned over motion_blocking if entity @s[dy=1000] store result score @s temp run random value 0..10240
execute as @a[scores={temp=..64}] run damage @s 1 on_fire
scoreboard players reset @a temp