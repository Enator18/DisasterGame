execute store result entity @s Rotation[0] double 0.001 run random value -180000..180000
execute store result score @s timer run random value 8..20
execute store result entity @s transformation.scale[0] float 0.001 run random value 750..1250
data modify entity @s transformation.scale[1] set from entity @s transformation.scale[0]
data modify entity @s transformation.scale[2] set from entity @s transformation.scale[0]
tag @s remove new