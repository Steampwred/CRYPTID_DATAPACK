execute unless entity @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1] run summon marker ~ ~620 ~ {Tags:["cryptid","cryptid.chunkerror"]}

spreadplayers ~ ~ 20 80 false @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1]
execute as @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1] run scoreboard players add @s cryptid.spawnattempts 1

## attempts
execute as @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1, scores={cryptid.spawnattempts=..10}] at @s if entity @n[tag=cryptid.totem2,distance=..200] run return run function cryptid:events/cryptid/chunkerror
execute as @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1, scores={cryptid.spawnattempts=..10}] at @s if entity @n[tag=cryptid.lessertotem,distance=..100] run return run function cryptid:events/cryptid/chunkerror
execute as @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1, scores={cryptid.spawnattempts=10..}] run kill @s


## On Succesful place
tellraw @a[distance=5..30] {"text":"That's a nice chunk. I think i'll take it.","color":"red"}
execute as @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1] at @s align xyz at @s run fill ~ ~10 ~ ~16 ~-100 ~16 air
execute as @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1] at @s align xyz at @s run function cryptid:events/general/spawnanomaly
execute as @e[type=marker,tag=cryptid.chunkerror, sort=nearest, limit=1] at @s run playsound minecraft:ambient.cave ambient @p[distance=0..60] ~ ~ ~ 10000 1

kill @e[type=marker, tag=cryptid.chunkerror]