execute at @e[type=armor_stand,tag=meteor] run particle minecraft:campfire_cosy_smoke ~ ~4 ~ .2 .3 .2 0 8
execute at @e[type=armor_stand,tag=meteor] run particle minecraft:flame ~ ~4 ~ .2 .3 .2 0 8
scoreboard players add @e[type=armor_stand,tag=meteor] timer 1
execute at @e[type=armor_stand,tag=meteor,scores={timer=4..}] run playsound minecraft:item.firecharge.use block @a ~ ~ ~ 1 0
scoreboard players reset @e[type=armor_stand,tag=meteor,scores={timer=4..}] timer
execute as @e[type=armor_stand,tag=meteor,nbt={OnGround:1b}] at @s run function disastergame:meteorhit
execute as @e[type=armor_stand,tag=frag,nbt={OnGround:1b}] at @s run function disastergame:fraghit

scoreboard players add @e[type=block_display,tag=meteor_display] timer 1
execute as @e[type=block_display,tag=meteor_display,scores={timer=8..}] run data modify entity @s transformation.left_rotation set value {angle:2.09439510239f,axis:[0.57735026919f,0.57735026919f,0.57735026919f]}
execute as @e[type=block_display,tag=meteor_display,scores={timer=8..}] run data modify entity @s start_interpolation set value 0
execute as @e[type=block_display,tag=meteor_display,scores={timer=16..}] run data modify entity @s transformation.left_rotation set value {angle:4.18879020479f,axis:[0.57735026919f,0.57735026919f,0.57735026919f]}
execute as @e[type=block_display,tag=meteor_display,scores={timer=16..}] run data modify entity @s start_interpolation set value 0
execute as @e[type=block_display,tag=meteor_display,scores={timer=24..}] run data modify entity @s transformation.left_rotation set value {angle:6.28318530718f,axis:[0.57735026919f,0.57735026919f,0.57735026919f]}
execute as @e[type=block_display,tag=meteor_display,scores={timer=24..}] run data modify entity @s start_interpolation set value 0
scoreboard players reset @e[type=block_display,tag=meteor_display,scores={timer=24..}] timer