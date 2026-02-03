execute if score &rapture timer matches 340 as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 10 0
execute if score &rapture timer matches 300 as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 10 0
execute if score &rapture timer matches 260 as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 10 0
execute if score &rapture timer matches 260 as @a at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 10 0
execute if score &rapture timer matches 220 as @r[tag=alive] run function disastergame:raptureplayer
execute if score &rapture timer matches ..220 at @p[tag=raptured] run particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 0 1 force
execute if score &rapture timer matches 20 run effect give @p[tag=raptured] levitation infinite 255 true
execute if score &rapture timer matches 0 as @p[tag=raptured] at @s run function disastergame:endrapture
execute if score &rapture timer matches 0 store result score &rapture timer run random value 600..1800
scoreboard players remove &rapture timer 1