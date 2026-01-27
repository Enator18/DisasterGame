summon marker ~ ~ ~ {Tags:["meteor_spawner"]}
spreadplayers 66.0 65.0 10 64 under 39 false @e[tag=meteor_spawner]
execute at @e[tag=meteor_spawner] run summon snowball ~ ~200 ~ {Tags:["meteor","special"],Passengers:[{id:"minecraft:block_display",interpolation_duration:8,Tags:["meteor_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,-1.5f],scale:[3f,3f,3f]},block_state:{Name:"minecraft:magma_block"}}]}
kill @e[tag=meteor_spawner]