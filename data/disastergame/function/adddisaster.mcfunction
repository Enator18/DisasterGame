tag @e[type=marker,tag=selector,sort=random,limit=1] add selected
execute if entity @n[type=marker,tag=selected,tag=select_flood] run function disastergame:events/flood
execute if entity @n[type=marker,tag=selected,tag=select_infection] run function disastergame:events/infection
execute if entity @n[type=marker,tag=selected,tag=select_meteors] run function disastergame:events/meteors
execute if entity @n[type=marker,tag=selected,tag=select_shuffle] run function disastergame:events/shuffle
execute if entity @n[type=marker,tag=selected,tag=select_acidrain] run function disastergame:events/acidrain
execute if entity @n[type=marker,tag=selected,tag=select_rapture] run function disastergame:events/rapture
kill @n[type=marker,tag=selected]
scoreboard players set &disasters timer 900