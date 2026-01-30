tag @a[tag=!dev] add alive
spreadplayers 66.0 65.0 10 64 false @a[tag=alive]
gamemode adventure @a[tag=alive]
effect give @a[tag=alive] minecraft:instant_health 1 5

summon marker 0 0 0 {Tags:["selector","select_flood"]}
summon marker 0 0 0 {Tags:["selector","select_meteors"]}
summon marker 0 0 0 {Tags:["selector","select_infection"]}
summon marker 0 0 0 {Tags:["selector","select_shuffle"]}
summon marker 0 0 0 {Tags:["selector","select_acidrain"]}
summon marker 0 0 0 {Tags:["selector","select_rapture"]}

scoreboard players set &disasters timer 200