##roaming ai
execute store result score @s cryptid.player.random run random value 1..100


execute if score @s[tag=cryptid.roaming] cryptid.player.random matches 1..20 run execute at @s anchored eyes facing entity @p[sort=nearest, limit=1,distance=1..] eyes positioned ^ ^ ^1.5 rotated as @s positioned ^ ^ ^45 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ ~

execute as @s[tag=cryptid.roaming] at @s run tp @s ^ ^ ^0.12
execute as @s at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~


##triggered ai
tp @s[tag=!cryptid.roaming] ^ ^ ^0.35 facing entity @p
execute as @s at @s if entity @a[sort=nearest,limit=1,distance=185..] run function cryptid:events/quietkill

execute as @s at @s if entity @a[sort=nearest,limit=1,distance=15..] run tag @s add cryptid.roaming


tag @a[distance=0..20] add cryptid.bosschase


playsound minecraft:cryptid.screen.corrupted ambient @a[distance=0..30] ~ ~ ~ 100 0.1

execute as @e[distance=1..6,sort=random,limit=1,type=!vindicator, type=!marker,type=!item,type=!item_display,type=!block_display] at @s run function cryptid:events/harrowdeath
effect give @s minecraft:invisibility infinite 1 true
execute if entity @s[y=-70, dy=-120000000] run tag @s remove cryptid.roaming

##events ai
execute store result score @s cryptid.player.random run random value 1..120000
execute if score @s cryptid.player.random matches 1..30 run execute as @a[distance=0..40] at @s run function cryptid:events/cryptid/radiodead
execute if score @s cryptid.player.random matches 30..50 run function cryptid:events/quietkill


execute as @s[tag=cryptid.roaming] at @s anchored eyes facing entity @p[distance=0..20] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.55] run tag @s remove cryptid.roaming




##kill if player low


##Fill

execute if entity @p[distance=0..30] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:crimson_nylium replace #minecraft:moss_replaceable
execute if entity @p[distance=0..30] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:air replace #minecraft:leaves
execute if entity @p[distance=0..30] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:netherrack replace #minecraft:logs
execute if entity @p[distance=0..30] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:nether_wart_block replace #minecraft:base_stone_overworld



