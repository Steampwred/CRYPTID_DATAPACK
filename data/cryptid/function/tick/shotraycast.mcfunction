execute if score @s cryptid.range matches 80..110 positioned ~-.99 ~-.99 ~-.99 as @e[tag=!shootingun, type=!item, type=!firework_rocket,type=!armor_stand] positioned ~.99 ~.99 ~.99 as @s[dx=0] run function cryptid:action/getshot
execute if score @s cryptid.range matches 30..80 as @e[distance=0.1..2.9, limit=3, sort=random,tag=!shootingun, type=!item, type=!firework_rocket,type=!armor_stand] run function cryptid:action/getshot
execute if score @s cryptid.range matches ..29 as @e[distance=0.1..2.9, limit=3, sort=random, type=!item, type=!firework_rocket,type=!armor_stand] run function cryptid:action/getshot
execute if score @s cryptid.range matches ..29 if entity @e[distance=0.1..2.9, limit=3, sort=random,type=!item, type=!firework_rocket,type=!armor_stand] run scoreboard players set @s cryptid.range 0








execute if block ~ ~ ~ glass run particle item{item:{id:glass}} ~ ~1 ~ 0.4 0.4 0.4 0.1 420
execute if block ~ ~ ~ glass run playsound minecraft:block.glass.break ambient @a[distance=0..10]
execute if block ~ ~ ~ glass run setblock ~ ~ ~ air


execute if block ~ ~ ~ #minecraft:wooden_doors run particle item{item:{id:oak_door}} ~ ~1 ~ 0.4 0.4 0.4 0.1 420
execute if block ~ ~ ~ #minecraft:wooden_doors run playsound minecraft:entity.zombie.break_wooden_door ambient @a[distance=0..10] ~ ~ ~ 1 0.8
execute if block ~ ~ ~ #minecraft:wooden_doors run setblock ~ ~ ~ air






particle ash ~ ~ ~ 0.1 0.1 0.1 0.01 10

scoreboard players remove @s cryptid.range 1

execute if score @s cryptid.range matches 1.. if block ~ ~ ~ #minecraft:enchantment_power_transmitter positioned ^ ^ ^0.6 run return run function cryptid:tick/shotraycast

tag @s remove shootingun
