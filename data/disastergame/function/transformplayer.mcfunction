scoreboard players reset @s infectionTimer
tag @s remove infected
tag @s remove alive
tag @s remove raptured
team leave @s
summon vindicator ~ ~ ~ {CustomNameVisible:0b,Team:"Infected",Tags:["new","alive"],equipment:{mainhand:{id:"minecraft:air",count:1}},Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0.01},{id:"minecraft:follow_range",base:512},{id:"minecraft:scale",base:1.01}]}
rotate @n[type=vindicator,tag=new] ~ ~
summon mannequin ~ ~ ~ {Team:"Infected",Invulnerable:1b,hide_description:true,Tags:["infected_display","new"],CustomNameVisible:1b}
scoreboard players operation @e[tag=new,limit=2] infectedID = &current infectedID
scoreboard players add &current infectedID 1
tag @s add current
summon text_display ~ ~ ~ {Tags:["temp"],text:{selector:"@p[tag=current]"}}
tag @s remove current
data modify entity @n[type=mannequin,tag=new] CustomName set from entity @n[type=text_display,tag=temp] text.insertion
data modify entity @n[type=vindicator,tag=new] CustomName set from entity @n[type=text_display,tag=temp] text.insertion
kill @n[type=text_display,tag=temp]
data modify entity @n[type=mannequin,tag=new] profile.id set from entity @s UUID
tag @n[type=mannequin,tag=new] remove new
tag @n[type=vindicator,tag=new] remove new
effect clear @s
stopsound @s master minecraft:entity.enderman.stare
gamemode spectator