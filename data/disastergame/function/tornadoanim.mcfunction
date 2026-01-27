scoreboard players add @s timer 1
execute store result storage disastergame:temp arg1 float 0.2 run scoreboard players get @s timer
function disastergame:transformtornado with storage disastergame:temp
data modify entity @s start_interpolation set value 0