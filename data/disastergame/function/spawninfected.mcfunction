summon husk ~ ~ ~ {Team:"Infected",Tags:["new"],Silent:1b,PersistenceRequired:1b,CanBreakDoors:1b,CanPickUpLoot:0b,IsBaby:0b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:movement_speed",base:0.33},{id:"minecraft:scale",base:1.1}]}
summon mannequin ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,Team:"Infected",hide_description:true,Tags:["infected_display","new"],CustomName:"Infected",profile:{"properties":[{"name":"textures","value":"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI2NzRiMzAwNWY1OWQ1NmJhMzE2ZTZlM2MyOTkzODYwMzY1NjM2NWRkZDdmYjI1MzQzNGViYmIyZmQyYjMzZSJ9fX0="}]}}
scoreboard players operation @e[tag=new,limit=2] infectedID = &current infectedID
scoreboard players add &current infectedID 1
tag @n[type=mannequin,tag=new] remove new
tag @n[type=husk,tag=new] remove new