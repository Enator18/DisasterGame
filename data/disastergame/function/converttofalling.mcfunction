summon item_display ~ ~ ~ {Tags:["temp"]}
loot replace entity @n[type=item_display,tag=temp] contents loot blockstate:get
data modify storage disastergame:temp arg1 set from entity @n[type=item_display,tag=temp] item.components.minecraft:custom_data
function disastergame:spawnfalling with storage disastergame:temp
tellraw @a {"nbt":"item.components.minecraft:custom_data","entity":"@n[type=item_display,tag=temp]"}
setblock ~ ~ ~ air
kill @n[type=item_display,tag=temp]