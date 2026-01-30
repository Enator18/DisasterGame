execute as @a at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 10 .25
title @a title [{"bold":true,"color":"#B0422C","italic":true,"text":"R","underlined":true},{"bold":true,"color":"#A53E2B","italic":true,"text":"A","underlined":true},{"bold":true,"color":"#993A29","italic":true,"text":"P","underlined":true},{"bold":true,"color":"#8E3628","italic":true,"text":"T","underlined":true},{"bold":true,"color":"#833226","italic":true,"text":"U","underlined":true},{"bold":true,"color":"#782E25","italic":true,"text":"R","underlined":true},{"bold":true,"color":"#612622","italic":true,"text":"E","underlined":true}]
title @a subtitle {"color":"#F2F2F2","italic":true,"text":"Judgement day has arrived."}

execute store result score &rapture timer run random value 600..1800