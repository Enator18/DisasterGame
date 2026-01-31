summon marker ~ ~ ~ {Tags:["acid"]}
summon marker ~ ~ ~ {Tags:["acid"]}
summon marker ~ ~ ~ {Tags:["acid"]}
spreadplayers 66.0 65.0 10 64 false @e[type=marker,tag=acid]
execute at @e[type=marker,tag=acid] run setblock ~ ~-1 ~ air destroy
execute at @e[type=marker,tag=acid] run playsound minecraft:block.fire.extinguish master @a ~ ~-1 ~ .2 .7
execute at @e[type=marker,tag=acid] run particle minecraft:cloud ~ ~-0.5 ~ .3 .3 .3 0 10 force
kill @e[tag=acid]