

execute store result score @s cryptid.random run random value 1..4




execute if score @s cryptid.random matches 1 run execute as @e[tag=boss.pillar, type=zombie, sort=nearest, limit=2] at @s run tp @s ~ ~ ~ ~90 0
execute if score @s cryptid.random matches 2 run execute as @e[tag=boss.pillar, type=zombie, sort=nearest, limit=2] at @s run tp @s ~ ~ ~ ~180 0
execute if score @s cryptid.random matches 3 run execute as @e[tag=boss.pillar, type=zombie, sort=nearest, limit=2] at @s run tp @s ~ ~ ~ ~270 0
## 4 is same direction

playsound minecraft:entity.villager.work_weaponsmith ambient @a ~ ~ ~ 1 0.1