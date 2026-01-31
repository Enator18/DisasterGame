execute at @a run playsound minecraft:entity.husk.ambient master @p ~ ~ ~ 10 1.25
title @a title [{"bold":true,"color":"#618558","italic":true,"text":"O","underlined":true},{"bold":true,"color":"#5C7F54","italic":true,"text":"U","underlined":true},{"bold":true,"color":"#587A51","italic":true,"text":"T","underlined":true},{"bold":true,"color":"#53744D","italic":true,"text":"B","underlined":true},{"bold":true,"color":"#4E6E4A","italic":true,"text":"R","underlined":true},{"bold":true,"color":"#496846","italic":true,"text":"E","underlined":true},{"bold":true,"color":"#456342","italic":true,"text":"A","underlined":true},{"bold":true,"color":"#3B573B","italic":true,"text":"K","underlined":true}]
title @a subtitle {"color":"#F2F2F2","italic":true,"text":"A plague stirs..."}

scoreboard players set &current infectedID 0
function disastergame:spawninfected