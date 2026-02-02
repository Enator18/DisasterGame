execute store result score &swap temp run random value 0..1024
execute if score &swap temp matches ..767 run function disastergame:swapplayers
execute if score &swap temp matches 768.. at @a run playsound minecraft:entity.endermite.hurt master @a ~ ~ ~ 1 1
execute if score &swap temp matches 768.. run title @a actionbar {"color":"red","text":"Shuffle aborted..."}