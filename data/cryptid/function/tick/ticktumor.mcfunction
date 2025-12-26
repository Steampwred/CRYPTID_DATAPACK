execute store result score @s cryptid.random run random value 1..70
execute if score @s cryptid.random matches 1..10 run tp @s ~ ~ ~ ~3 ~
execute if score @s cryptid.random matches 10..20 run tp @s ~ ~ ~ ~-3 ~



execute as @s[tag=!init] at @s run tp @s ~ ~-1.6 ~
execute as @s[tag=!init] at @s run tag @s add init



##fill

execute if entity @p[distance=0..20] run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^3 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:netherrack replace #minecraft:mineable/shovel
execute if entity @p[distance=0..20] run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^3 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:netherrack replace #minecraft:mineable/hoe
execute if entity @p[distance=0..20] run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^3 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:netherrack replace #minecraft:mineable/pickaxe

execute if entity @p[distance=0..20] run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^3 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:nether_wart_block replace #minecraft:mineable/shovel
execute if entity @p[distance=0..20] run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^3 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:nether_wart_block replace #minecraft:mineable/hoe
execute if entity @p[distance=0..20] run execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^3 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:nether_wart_block replace #minecraft:mineable/pickaxe

