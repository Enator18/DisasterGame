summon marker ~ ~ ~ {Tags:["acid"]}
spreadplayers 66.0 65.0 10 64 false @n[type=marker,tag=acid]
execute at @n[type=marker,tag=acid] run setblock ~ ~-1 ~ air destroy
kill @n[tag=acid]