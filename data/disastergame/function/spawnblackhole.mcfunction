summon armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Invulnerable:true,Tags:["blackhole","new"]}
summon item_display ~ ~ ~ {teleport_duration:2,interpolation_duration:20,Tags:["blackhole","blackhole_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[4f,4f,4f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"properties":[{"name":"textures","value":"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzNmNTFlNTU0MmM4ZjE1MTdmN2Q4ZDNkOGY3M2FlYzkxMWY2NzA0OTQ1YWY4ZTczOWFjYjU5MzFlZGVhNjE5YiJ9fX0="}]}}}}
scoreboard players set @n[type=armor_stand,tag=new] radius 10
scoreboard players set @n[type=armor_stand,tag=new] raycastLimit 20
scoreboard players set @n[type=armor_stand,tag=new] volume 1000
scoreboard players set @n[type=armor_stand,tag=new] mass 1000