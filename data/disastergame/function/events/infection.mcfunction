execute at @a run playsound minecraft:entity.husk.ambient master @p ~ ~ ~ 10 1.25
title @a title [{"bold":true,"color":"#618558","italic":true,"text":"I","underlined":true},{"bold":true,"color":"#5B7D53","italic":true,"text":"N","underlined":true},{"bold":true,"color":"#55764E","italic":true,"text":"F","underlined":true},{"bold":true,"color":"#4F6E49","italic":true,"text":"E","underlined":true},{"bold":true,"color":"#496644","italic":true,"text":"C","underlined":true},{"bold":true,"color":"#425F40","italic":true,"text":"T","underlined":true},{"bold":true,"color":"#3C573B","italic":true,"text":"I","underlined":true},{"bold":true,"color":"#364F36","italic":true,"text":"O","underlined":true},{"bold":true,"color":"#2A402C","italic":true,"text":"N","underlined":true}]
title @a subtitle {"color":"#F2F2F2","italic":true,"text":"A plague stirs..."}

scoreboard players set &current infectedID 0
function disastergame:spawninfected