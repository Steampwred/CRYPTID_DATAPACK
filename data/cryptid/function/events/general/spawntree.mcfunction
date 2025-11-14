execute store result score @s cryptid.player.random run random value 1..5
setblock ~ ~-1 ~ minecraft:grass_block

execute if score @s cryptid.player.random matches 1 run place feature minecraft:fancy_oak
execute if score @s cryptid.player.random matches 2 run place feature minecraft:spruce
execute if score @s cryptid.player.random matches 4 run place feature minecraft:mangrove_vegetation
execute if score @s cryptid.player.random matches 5 run place feature minecraft:acacia


execute if score @s cryptid.player.random matches 3 run setblock ~ ~-1 ~ deepslate
execute if score @s cryptid.player.random matches 3 run place feature minecraft:sculk_patch_ancient_city

fill ~15 ~15 ~15 ~-15 ~-15 ~-15 nether_wart_block replace #minecraft:leaves
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 netherrack replace #minecraft:logs
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 red_terracotta replace sculk
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 obsidian replace mangrove_roots
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air replace vine
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air replace moss_carpet
fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air replace minecraft:sculk_sensor

playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance=0..30]