execute if score &shuffle timer matches 0..120 at @e[tag=alive] run particle minecraft:trial_spawner_detection_ominous ^ ^ ^0.5 .3 .5 .3 0 10
execute if score &shuffle timer matches 60 run title @a title {"color":"white","italic":true,"text":"Swapping in 3..."}
execute if score &shuffle timer matches 60 at @a run playsound minecraft:item.brush.brushing.generic master @a ~ ~ ~ 1 1
execute if score &shuffle timer matches 40 run title @a title {"color":"white","italic":true,"text":"Swapping in 2..."}
execute if score &shuffle timer matches 40 at @a run playsound minecraft:item.brush.brushing.generic master @a ~ ~ ~ 1 1
execute if score &shuffle timer matches 20 run title @a title {"color":"white","italic":true,"text":"Swapping in 1..."}
execute if score &shuffle timer matches 20 at @a run playsound minecraft:item.brush.brushing.generic master @a ~ ~ ~ 1 1
execute if score &shuffle timer matches 0 run function disastergame:maybeswap
scoreboard players remove &shuffle timer 1