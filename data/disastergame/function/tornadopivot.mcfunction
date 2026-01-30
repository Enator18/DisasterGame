scoreboard players add @s timer 1
execute as @s[scores={timer=150..}] on passengers run kill @s
kill @s[scores={timer=150..}]
execute at @s run tp @s ^ ^0.2 ^0.1 ~4 ~