damage @s[gamemode=!creative] 6 minecraft:out_of_world by @s

particle minecraft:poof ~ ~ ~ 2 2 2 0.01 500 force

playsound minecraft:entity.allay.hurt ambient @a ~ ~ ~ 1 0.1

#execute positioned ~ ~-4 ~ run place feature cryptid:clearflesh
execute positioned ~ ~1 ~ run place feature cryptid:clearflesh
fillbiome ~-10 ~-10 ~-10 ~10 ~10 ~10 cryptid:petrified_fields replace cryptid:empty

execute as @e[tag=cryptid.worm, distance=..7] at @s run function cryptid:action/general/explodedeath

