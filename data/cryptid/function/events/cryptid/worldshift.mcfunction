execute unless entity @e[type=marker,tag=cryptid.worldshift, sort=nearest, limit=1] run summon minecraft:marker ~ 400 ~ {Tags:["cryptid.worldshift"]}

execute as @e[type=marker, tag=cryptid.worldshift] at @s run spreadplayers ~ ~ 60 40 false @s
execute as @e[type=marker,tag=cryptid.worldshift, sort=nearest, limit=1] run scoreboard players add @s cryptid.spawnattempts 1


## attempts
execute as @e[type=marker,tag=cryptid.worldshift, sort=nearest, limit=1, scores={cryptid.spawnattempts=..10}] at @s if entity @n[tag=cryptid.totem2,distance=..200] run return run function cryptid:events/cryptid/worldshift
execute as @e[type=marker,tag=cryptid.worldshift, sort=nearest, limit=1, scores={cryptid.spawnattempts=..10}] at @s if entity @n[tag=cryptid.lessertotem,distance=..100] run return run function cryptid:events/cryptid/worldshift
execute as @e[type=marker,tag=cryptid.worldshift, sort=nearest, limit=1, scores={cryptid.spawnattempts=10..}] run kill @s

## on successful place
execute as @e[type=marker, tag=cryptid.worldshift] at @s run function cryptid:action/worldshift/shift
