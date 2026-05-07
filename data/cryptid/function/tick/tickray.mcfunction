execute store result score @s cryptid.player.random run random value 1..1000

execute if score @s[tag=!duperay] cryptid.player.random matches 1..10 run summon minecraft:armor_stand ~2 ~-4 ~2 {Invisible:1, NoGravity:1, Tags:["duperay","cryptid","cryptid.skyray","cryptid.ignore.radar"],CustomName:'[{"text":"Ray of heaven"}]'}


tp @s ^ ^ ^1 facing entity @e[sort=random, limit=1, distance=1..,type=!item]

setblock ~ ~1 ~ nether_wart_block

setblock ~1 ~2 ~ nether_wart_block


execute unless block ~ ~-2 ~ air run setblock ~ ~-1 ~ crimson_nylium
execute unless block ~ ~-2 ~ air run place feature minecraft:crimson_fungus
execute unless block ~ ~-2 ~ air run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:netherrack replace #logs
execute unless block ~ ~-2 ~ air run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:netherrack replace shroomlight


execute unless block ~ ~-2 ~ air run kill @s