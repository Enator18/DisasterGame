tag @e[type=item] add old
loot spawn 0 0 0 loot disastergame:healing_items
spreadplayers 66.0 65.0 24 64 false @e[type=item,tag=!old]
execute at @e[type=item,tag=!old] run particle poof ~ ~ ~ .1 .1 .1 0 10 force
title @a actionbar {"color":"white","text":"Items have appeared across the map.","underlined":true}