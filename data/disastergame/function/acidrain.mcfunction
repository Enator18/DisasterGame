summon marker ~ ~ ~ {Tags:["acid"]}
spreadplayers 66.0 65.0 10 64 false @n[type=marker,tag=acid]
execute at @n[type=marker,tag=acid] run setblock ~ ~-1 ~ air destroy
execute at @n[type=marker,tag=acid] run playsound minecraft:block.fire.extinguish master @a ~ ~-1 ~ .2 .7
execute at @n[type=marker,tag=acid] run particle minecraft:cloud ~ ~-0.5 ~ .3 .3 .3 0 10 force
kill @n[tag=acid]