#Meteor shower
execute if score &meteorTimer globals matches 0.. run scoreboard players remove &meteorTimer globals 1
execute if score &meteorTimer globals matches 0 run function disastergame:spawnmeteor
execute if score &meteorTimer globals matches 0 run scoreboard players set &meteorTimer globals 24
execute at @e[type=armor_stand,tag=meteor] run particle minecraft:campfire_cosy_smoke ~ ~4 ~ .2 .3 .2 0 8 force
execute at @e[type=armor_stand,tag=meteor] run particle minecraft:flame ~ ~4 ~ .2 .3 .2 0 8 force
scoreboard players add @e[type=armor_stand,tag=meteor] timer 1
execute at @e[type=armor_stand,tag=meteor,scores={timer=4..}] run playsound minecraft:item.firecharge.use block @a ~ ~ ~ 2 0
scoreboard players reset @e[type=armor_stand,tag=meteor,scores={timer=4..}] timer
execute as @e[type=armor_stand,tag=meteor,nbt={OnGround:1b}] at @s run function disastergame:meteorhit
execute as @e[type=armor_stand,tag=frag,nbt={OnGround:1b}] at @s run function disastergame:fraghit
execute as @e[type=armor_stand,tag=meteor] on passengers run tag @s add alive
execute as @e[type=armor_stand,tag=frag] on passengers run tag @s add alive
kill @e[tag=meteor_display,tag=!alive]
tag @e[tag=meteor_display,tag=alive] remove alive

scoreboard players add @e[type=block_display,tag=meteor_display] timer 1
execute as @e[type=block_display,tag=meteor_display,scores={timer=8..}] run data modify entity @s transformation.left_rotation set value {angle:2.09439510239f,axis:[0.57735026919f,0.57735026919f,0.57735026919f]}
execute as @e[type=block_display,tag=meteor_display,scores={timer=8..}] run data modify entity @s start_interpolation set value 0
execute as @e[type=block_display,tag=meteor_display,scores={timer=16..}] run data modify entity @s transformation.left_rotation set value {angle:4.18879020479f,axis:[0.57735026919f,0.57735026919f,0.57735026919f]}
execute as @e[type=block_display,tag=meteor_display,scores={timer=16..}] run data modify entity @s start_interpolation set value 0
execute as @e[type=block_display,tag=meteor_display,scores={timer=24..}] run data modify entity @s transformation.left_rotation set value {angle:6.28318530718f,axis:[0.57735026919f,0.57735026919f,0.57735026919f]}
execute as @e[type=block_display,tag=meteor_display,scores={timer=24..}] run data modify entity @s start_interpolation set value 0
scoreboard players reset @e[type=block_display,tag=meteor_display,scores={timer=24..}] timer

#Player swapping
execute if score &swapTimer globals matches 0.. run function disastergame:swaptick

#Throwable tnt
execute at @e[type=snowball] run kill @n[tag=snowball_hit]
execute at @e[tag=snowball_hit] run summon tnt ~ ~ ~ {fuse:20}
kill @e[tag=snowball_hit]
execute at @e[type=snowball] run summon marker ~ ~ ~ {Tags:["snowball_hit"]}

#Flood
scoreboard players add @e[tag=flood] timer 1
execute at @e[tag=flood] run fill ~ ~ ~ ~ ~ ~143 water replace air
execute as @e[tag=flood] at @s run tp @s ~1 ~ ~
execute as @e[tag=flood,scores={timer=144..}] at @s run tp @s ~-144 ~1 ~
scoreboard players add @e[tag=flood,scores={timer=144..}] timer2 1
kill @e[tag=flood,scores={timer2=96..}]
scoreboard players reset @e[tag=flood,scores={timer=144..}] timer

#Infection
scoreboard players add @a[tag=alive,tag=infected] infectionTimer 1
effect give @a[tag=infected,scores={infectionTimer=80}] minecraft:nausea 60 1 true
playsound minecraft:entity.enderman.stare master @a[tag=infected,scores={infectionTimer=120}] ~ ~ ~ 100
effect give @a[tag=infected,scores={infectionTimer=176}] minecraft:slowness 60 1 true
effect give @a[tag=infected,scores={infectionTimer=176}] minecraft:darkness 60 1 true
execute as @a[tag=infected,scores={infectionTimer=256..}] at @s run function disastergame:transformplayer
execute as @e[type=mannequin,tag=infected_display] at @s run function disastergame:tpfake
tag @e[type=husk] remove used
execute as @e[type=husk] run data modify entity @s DrownedConversionTime set value -1

#Tornado
execute at @e[type=marker,tag=tornado] run summon block_display ~ ~ ~ {interpolation_duration:1,teleport_duration:1,Tags:["tornado","new"],block_state:{Name:"minecraft:white_stained_glass"}}
execute store result entity @n[type=block_display,tag=tornado,tag=new] Rotation[0] double 0.001 run random value -180000..180000
tag @n[type=block_display,tag=tornado,tag=new] remove new
execute as @e[type=block_display,tag=tornado] at @s run function disastergame:tornadoanim