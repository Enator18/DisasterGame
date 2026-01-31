#Disaster Timer
execute if score &disasters timer matches 0 run function disastergame:adddisaster
execute if score &disasters timer matches 0.. run scoreboard players remove &disasters timer 1
execute store result bossbar minecraft:next_disaster value run scoreboard players get &disasters timer

#Meteor shower
execute if score &meteors timer matches 0.. run scoreboard players remove &meteors timer 1
execute if score &meteors timer matches 0 run function disastergame:spawnmeteor
execute if score &meteors timer matches 0 run scoreboard players set &meteors timer 24
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
execute if score &shuffle timer matches 0.. run function disastergame:swaptick

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
tag @e[type=vindicator] remove used
execute as @e[type=vindicator] run data modify entity @s DrownedConversionTime set value -1

tag @e[type=vindicator,nbt={OnGround:1b}] remove jumping
execute as @e[type=vindicator,tag=!jumping] at @s if entity @p[tag=alive,distance=5..12] run function disastergame:infectedlunge
execute as @e[type=vindicator,tag=jumping] at @s if entity @p[tag=alive,distance=..2] run data merge entity @s {Motion:[0.0, 0.0, 0.0]}
execute as @e[type=vindicator,tag=jumping] at @s if entity @p[tag=alive,distance=..2] run tag @s remove jumping

#Tornado
execute at @e[type=marker,tag=tornado_emitter] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Tags:["tornado","tornado_pivot"],Passengers:[{id:"minecraft:block_display",interpolation_duration:5,teleport_duration:5,Tags:["tornado","new"],block_state:{Name:"minecraft:white_stained_glass"}},{id:"minecraft:block_display",interpolation_duration:5,teleport_duration:5,Tags:["tornado","new"],block_state:{Name:"minecraft:white_stained_glass"}},{id:"minecraft:block_display",interpolation_duration:5,teleport_duration:5,Tags:["tornado","new"],block_state:{Name:"minecraft:white_stained_glass"}}]}
execute as @e[type=block_display,tag=tornado,tag=new] run function disastergame:tornadoanimstart
execute as @e[type=block_display,tag=tornado] at @s run function disastergame:tornadoanim
execute as @e[type=block_display,tag=tornado,sort=random,limit=100] at @s run function disastergame:tornadoparticle
execute as @e[type=armor_stand,tag=tornado_pivot] run function disastergame:tornadopivot

#Acid Rain
execute if score &acidRain globals matches 1 run function disastergame:acidrain

#Rapture
execute if score &rapture timer matches 0.. run function disastergame:rapturetick
execute as @a[tag=alive] at @s run kill @s[y=300,dx=0,dy=1000,dz=0]

#Death
execute as @a[tag=alive,scores={died=1..}] run function disastergame:playerdied
scoreboard players reset @a died

#Misc
effect give @a minecraft:saturation infinite 255 true
execute as @a at @s if predicate disastergame:underwater run damage @s 1 minecraft:drown
execute as @e[type=vindicator] at @s if predicate disastergame:underwater run damage @s 1 minecraft:generic_kill
tag @a[gamemode=adventure] add alive