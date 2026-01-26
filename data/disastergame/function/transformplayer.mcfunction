tag @s remove alive
summon husk ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,IsBaby:0b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:movement_speed",base:3.0}]}
summon mannequin ~ ~ ~ {Invulnerable:1b,hide_description:true,Tags:["infected_display","new"]}
tag @s add current
summon text_display ~ ~ ~ {Tags:["temp"],text:{selector:"@p[tag=current]"}}
tag @s remove current
data modify entity @n[type=mannequin,tag=new] CustomName set from entity @n[type=text_display,tag=temp] text.insertion
kill @n[type=text_display,tag=temp]
data modify entity @n[type=mannequin,tag=new] profile.id set from entity @s UUID
tag @n[type=mannequin] remove new
gamemode spectator