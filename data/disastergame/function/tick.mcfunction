execute at @e[type=armor_stand,tag=meteor] run particle dust{color:[1.000,0.353,0.000],scale:1} ~ ~ ~ 1 1 1 1 50 force
execute as @e[type=armor_stand,tag=meteor,nbt={OnGround:1b}] at @s run function disastergame:meteorhit
execute as @e[type=armor_stand,tag=frag,nbt={OnGround:1b}] at @s run function disastergame:fraghit