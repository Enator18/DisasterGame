advancement revoke @s only disastergame:ate_forbidden_fruit
title @a actionbar [{"bold":true,"color":"white","italic":true,"selector":"@s"},{"bold":false,"color":"white","italic":false,"text":" consumed the ","underlined":false},{"bold":true,"color":"gold","italic":true,"text":"Forbidden Fruit","underlined":false}]
tag @s remove infected
scoreboard players reset @s infectionTimer
effect clear @s nausea
effect clear @s slowness
effect clear @s darkness
stopsound @s master minecraft:entity.enderman.stare
function disastergame:adddisaster