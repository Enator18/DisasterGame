tag @e[type=marker,tag=selector,sort=random,limit=1] add selected
execute if entity @n[type=marker,tag=selected,tag=flood] run function disastergame:events/flood
execute if entity @n[type=marker,tag=selected,tag=infection] run function disastergame:events/infection
execute if entity @n[type=marker,tag=selected,tag=meteors] run function disastergame:events/meteors
execute if entity @n[type=marker,tag=selected,tag=shuffle] run function disastergame:events/shuffle
kill @n[type=marker,tag=selected]
scoreboard players set &disasterTimer globals 900