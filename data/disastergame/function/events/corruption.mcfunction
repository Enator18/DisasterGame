execute as @a at @s run playsound minecraft:block.sculk_shrieker.shriek master @s ~ ~ ~ 10 0
title @a title [{"bold":true,"color":"#1F4966","italic":true,"text":"C","underlined":true},{"bold":true,"color":"#204664","italic":true,"text":"O","underlined":true},{"bold":true,"color":"#224361","italic":true,"text":"R","underlined":true},{"bold":true,"color":"#23405F","italic":true,"text":"R","underlined":true},{"bold":true,"color":"#253D5C","italic":true,"text":"U","underlined":true},{"bold":true,"color":"#263B5A","italic":true,"text":"P","underlined":true},{"bold":true,"color":"#273857","italic":true,"text":"T","underlined":true},{"bold":true,"color":"#293555","italic":true,"text":"I","underlined":true},{"bold":true,"color":"#2A3252","italic":true,"text":"O","underlined":true},{"bold":true,"color":"#2D2C4D","italic":true,"text":"N","underlined":true}]
title @a subtitle {"color":"#F2F2F2","italic":true,"text":"It spreads."}

summon marker 66 82 65 {Tags:["corruption"]}
summon marker 66 82 65 {Tags:["corruption"]}
summon marker 66 82 65 {Tags:["corruption"]}
spreadplayers 66.0 65.0 24 64 false @e[type=marker,tag=corruption]
execute as @e[type=marker,tag=corruption] at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~