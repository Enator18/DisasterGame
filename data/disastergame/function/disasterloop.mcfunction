function disastergame:adddisaster
bossbar set minecraft:next_disaster players @a
scoreboard players set &disasters timer 900
kill @e[type=item]