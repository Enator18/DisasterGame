data modify entity @s Fire set value -20
execute on passengers run rotate @s ~180 ~
attribute @s attack_damage base set 4
execute if predicate disastergame:serpent_bounds run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air destroy
playsound minecraft:block.blastfurnace.fire_crackle master @a ~ ~ ~ 4
scoreboard players remove @s timer 1
execute if score @s timer matches ..-1 run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 4 0
execute if score @s timer matches ..-1 store result score @s timer run random value 200..400