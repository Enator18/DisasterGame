scoreboard players set &disasterTimer globals -1
scoreboard players set &meteorTimer globals -1
scoreboard players set &swapTimer globals -1
kill @e[type=husk]
kill @e[type=mannequin,tag=infected_display]
kill @e[type=marker,tag=flood]
kill @e[type=armor_stand,tag=meteor]
kill @e[type=armor_stand,tag=frag]
kill @e[type=block_display,tag=meteor_display]
kill @e[type=marker,tag=selector]

tag @a remove alive