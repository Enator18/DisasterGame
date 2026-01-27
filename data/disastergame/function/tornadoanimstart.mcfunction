execute store result entity @s Rotation[0] double 0.001 run random value -180000..180000
execute store result score @s timer2 run random value 4..24
execute store result entity @s transformation.scale[0] float 0.001 run random value 500..2000
data modify entity @s transformation.scale[1] set from entity @s transformation.scale[0]
data modify entity @s transformation.scale[2] set from entity @s transformation.scale[0]
tag @s remove new