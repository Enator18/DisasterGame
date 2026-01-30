scoreboard players set &disasters timer -1
scoreboard players set &meteors timer -1
scoreboard players set &shuffle timer -1
scoreboard players set &rapture timer -1
scoreboard players set &acidRain globals 0
weather clear
kill @e[type=husk]
kill @e[type=mannequin,tag=infected_display]
kill @e[type=marker,tag=flood]
kill @e[type=armor_stand,tag=meteor]
kill @e[type=armor_stand,tag=frag]
kill @e[type=block_display,tag=meteor_display]
kill @e[type=warden,tag=monster]
kill @e[type=marker,tag=selector]

tag @a remove alive
tag @a remove raptured
tag @a remove infected
team leave @a
gamemode spectator @a
bossbar set minecraft:next_disaster players