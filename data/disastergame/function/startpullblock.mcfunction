execute store result storage disastergame:temp arg1 int 1 run function #bs.random:normal {mean:0,spread:1000}
execute store result storage disastergame:temp arg2 int 1 run function #bs.random:normal {mean:0,spread:1000}
execute store result storage disastergame:temp arg3 int 1 run function #bs.random:normal {mean:0,spread:1000}
scoreboard players reset &recursiveCount temp
function disastergame:doraycast with storage disastergame:temp