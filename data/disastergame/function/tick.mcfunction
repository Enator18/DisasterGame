execute at @e[type=armor_stand,tag=meteor] run particle minecraft:campfire_cosy_smoke ~ ~4 ~ .2 .3 .2 0 8
execute at @e[type=armor_stand,tag=meteor] run particle minecraft:flame ~ ~4 ~ .2 .3 .2 0 8
scoreboard players add @e[type=armor_stand,tag=meteor] timer 1
execute at @e[type=armor_stand,tag=meteor,scores={timer=4..}] run playsound minecraft:item.firecharge.use block @a ~ ~ ~ 1 0
scoreboard players reset @e[type=armor_stand,tag=meteor,scores={timer=4..}] timer
execute as @e[type=block_display,tag=meteor_display] at @s run rotate @s ~10 ~8
execute as @e[type=armor_stand,tag=meteor,nbt={OnGround:1b}] at @s run function disastergame:meteorhit
execute as @e[type=armor_stand,tag=frag,nbt={OnGround:1b}] at @s run function disastergame:fraghit