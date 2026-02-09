summon creeper ~ ~ ~ {ignited:1b,ExplosionRadius:6b,Fuse:0,Invulnerable:1b}
particle minecraft:campfire_cosy_smoke ~ ~ ~ .25 .25 .25 0.1 30 force
particle minecraft:poof ~ ~ ~  .5 .5 .5 .2 25
/playsound minecraft:entity.breeze.death master @a ~ ~ ~ 4 0
function disastergame:meteorfrag
execute on passengers run kill @s
kill @s