summon armor_stand ~ ~ ~ {Tags:["new","frag"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:block_display",interpolation_duration:8,Tags:["meteor_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:magma_block"}}]}
execute store result entity @e[type=armor_stand,tag=new,limit=1] Motion[0] double 0.001 run random value -2000..2000
execute store result entity @e[type=armor_stand,tag=new,limit=1] Motion[1] double 0.001 run random value 500..1500
execute store result entity @e[type=armor_stand,tag=new,limit=1] Motion[2] double 0.001 run random value -2000..2000
scoreboard players add @s count 1
tag @e[type=armor_stand,tag=new] remove new
summon falling_block ~ ~ ~ {Tags:["new"],BlockState:{Name:"minecraft:fire"},Time:1}
execute store result entity @e[type=falling_block,tag=new,limit=1] Motion[0] double 0.001 run random value -1500..1500
execute store result entity @e[type=falling_block,tag=new,limit=1] Motion[1] double 0.001 run random value 500..1000
execute store result entity @e[type=falling_block,tag=new,limit=1] Motion[2] double 0.001 run random value -1500..1500
tag @e[type=falling_block,tag=new] remove new
execute if entity @s[scores={count=..10}] run function disastergame:meteorfrag