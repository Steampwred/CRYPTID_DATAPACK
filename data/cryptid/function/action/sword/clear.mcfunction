damage @s[gamemode=!creative] 6 minecraft:out_of_world by @s

particle minecraft:poof ~ ~ ~ 2 2 2 0.01 500 force

playsound minecraft:entity.allay.hurt ambient @a ~ ~ ~ 1 0.1

fill ~6 ~8 ~6 ~-6 ~-8 ~-6 wall_torch[facing=north] replace redstone_wall_torch[facing=north]
fill ~6 ~8 ~6 ~-6 ~-8 ~-6 wall_torch[facing=south] replace redstone_wall_torch[facing=south]
fill ~10 ~10 ~10 ~-10 ~-10 ~-10 wall_torch[facing=east] replace redstone_wall_torch[facing=east]
fill ~10 ~10 ~10 ~-10 ~-10 ~-10 wall_torch[facing=west] replace redstone_wall_torch[facing=west]

execute positioned ~ ~-4 ~ run place feature cryptid:clearflesh.json
execute positioned ~ ~5 ~ run place feature cryptid:clearflesh.json

execute as @e[tag=cryptid.worm, distance=..7.5] at @s run function cryptid:action/general/explodedeath

