execute store result score @s cryptid.random run random value 1..70
execute if score @s cryptid.random matches 1..10 run tp @s ~ ~ ~ ~3 ~
execute if score @s cryptid.random matches 10..20 run tp @s ~ ~ ~ ~-3 ~



execute as @s[tag=!init] at @s run tp @s ~ ~-1.6 ~
execute as @s[tag=!init] at @s run tag @s add init



##fill

execute if entity @p[distance=0..8] run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^3 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:netherrack replace #minecraft:mineable/pickaxe

execute if entity @p[distance=0..8] run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^3 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:nether_wart_block replace #minecraft:mineable/pickaxe


execute store result score @s cryptid.random run random value 1..70000


##event spawner
execute if score @s cryptid.random matches 1..100 if entity @p[distance=0..25] at @s run function cryptid:events/underground/artery
execute if score @s cryptid.random matches 1..100 if entity @p[distance=0..25] at @s run kill @s


execute if entity @p[distance=100..] if score .globaltime cryptid.time matches 1..4200 run kill @s
execute if entity @p[distance=100..] if score .globaltime cryptid.time matches 1..4200 run function cryptid:events/general/breakerant