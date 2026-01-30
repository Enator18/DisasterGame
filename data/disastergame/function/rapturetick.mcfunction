execute if score &rapture timer matches 330 as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 10 0
execute if score &rapture timer matches 290 as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 10 0
execute if score &rapture timer matches 250 as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 10 0
execute if score &rapture timer matches 250 as @a at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 10 0
execute if score &rapture timer matches 210 as @r[tag=alive] run function disastergame:raptureplayer
execute if score &rapture timer matches ..210 at @p[tag=raptured] run particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 0 1 force
execute if score &rapture timer matches 10 run effect give @p[tag=raptured] levitation infinite 255 true
execute if score &rapture timer matches 0 as @p[tag=raptured] at @s run function disastergame:endrapture
execute if score &rapture timer matches 0 store result score &rapture timer run random value 600..1800
scoreboard players remove &rapture timer 1