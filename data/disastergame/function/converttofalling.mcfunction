summon item_display ~ ~ ~ {UUID:[I;0,0,0,0]}
execute at @s positioned ~ ~-0.1 ~ run loot replace entity 0-0-0-0-0 contents loot blockstate:get
setblock ~ ~ ~ air
function disastergame:spawnfalling with entity 0-0-0-0-0 item.components.minecraft:custom_data
tellraw @a {"nbt":"item.components.minecraft:custom_data","entity":"0-0-0-0-0"}
kill 0-0-0-0-0