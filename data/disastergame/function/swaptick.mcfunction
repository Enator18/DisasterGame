execute if score &swapTimer globals matches 0..120 at @e[tag=alive] run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ .3 .5 .3 0 10
execute if score &swapTimer globals matches 60 run title @a title {"color":"white","italic":true,"text":"Swapping in 3..."}
execute if score &swapTimer globals matches 60 at @a run playsound minecraft:item.brush.brushing.generic master @a ~ ~ ~ 1 1
execute if score &swapTimer globals matches 40 run title @a title {"color":"white","italic":true,"text":"Swapping in 2..."}
execute if score &swapTimer globals matches 40 at @a run playsound minecraft:item.brush.brushing.generic master @a ~ ~ ~ 1 1
execute if score &swapTimer globals matches 20 run title @a title {"color":"white","italic":true,"text":"Swapping in 1..."}
execute if score &swapTimer globals matches 20 at @a run playsound minecraft:item.brush.brushing.generic master @a ~ ~ ~ 1 1
execute if score &swapTimer globals matches 0 at @a run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute if score &swapTimer globals matches 0 run function disastergame:swapplayers
execute if score &swapTimer globals matches 0 at @e[tag=alive] run particle poof ~ ~1 ~ .25 .4 .25 0 25
execute if score &swapTimer globals matches 0 run title @a clear
execute if score &swapTimer globals matches 0 store result score &swapTimer globals run random value 600..1500
scoreboard players remove &swapTimer globals 1