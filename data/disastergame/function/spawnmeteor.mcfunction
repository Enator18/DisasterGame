summon marker ~ ~ ~ {Tags:["meteor_spawner"]}
spreadplayers 42.0 41.0 10 40 false @e[tag=meteor_spawner]
execute at @e[tag=meteor_spawner] run summon armor_stand ~ ~200 ~ {Invulnerable:1b,Marker:0b,Invisible:1b,Tags:["meteor"],Passengers:[{id:"minecraft:block_display",teleport_duration:2,Tags:["meteor_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-2f,-1.5f],scale:[3f,3f,3f]},block_state:{Name:"minecraft:magma_block"}}]}
kill @e[tag=meteor_spawner]