tag @a[tag=!dev] add alive
spreadplayers 66.0 65.0 10 64 false @a[tag=alive]

function disastergame:beginflood
scoreboard players set &current infectedID 0
function disastergame:spawninfected
scoreboard players set &meteorTimer globals 24
scoreboard players set &swapTimer globals 1200