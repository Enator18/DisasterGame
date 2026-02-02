execute store result score &swap temp run random value 0..1024
execute if score &swap temp matches ..511 run function disastergame:swapplayers
execute if score &swap temp matches 512.. at @a run playsound minecraft:entity.endermite.hurt master @a ~ ~ ~ 1 1
execute if score &swap temp matches 512.. run title @a actionbar {"color":"red","text":"Shuffle aborted..."}