summon item_display ~ ~ ~ {Tags:["temp"]}
execute at @s positioned ~ ~ ~ run loot replace entity @n[type=item_display,tag=temp] contents loot blockstate:get
function disastergame:spawnfalling with entity @n[type=item_display,tag=temp] item.components.minecraft:custom_data
tellraw @a {"nbt":"item.components.minecraft:custom_data","entity":"@n[type=item_display,tag=temp]"}
setblock ~ ~ ~ air
kill @n[type=item_display,tag=temp]