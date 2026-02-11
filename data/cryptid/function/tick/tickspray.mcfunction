
##init
execute as @s[tag=!init] at @s run tp @s ^ ^ ^-2 facing entity @p

execute as @s[tag=!init] at @s run tag @s add init


execute anchored eyes run particle item{item:{id:nether_wart_block}} ^ ^ ^0.1 ^ ^ ^1000000 0.000001 0
execute anchored eyes run particle item{item:{id:nether_wart_block}} ^ ^0.1 ^0.15 ^ ^ ^1000000 0.000001 0
execute anchored eyes run particle item{item:{id:nether_wart_block}} ^-0.05 ^0.05 ^0.05 ^ ^ ^1000000 0.000001 0
execute anchored eyes run particle item{item:{id:nether_wart_block}} ^-0.05 ^-0.05 ^0.25 ^ ^ ^1000000 0.000001 0
execute anchored eyes run particle item{item:{id:nether_wart_block}} ^0.1 ^-0.05 ^0.17 ^ ^ ^1000000 0.000001 0
execute anchored eyes run particle item{item:{id:nether_wart_block}} ^0.1 ^-0.1 ^0.11 ^ ^ ^1000000 0.000001 0



execute if entity @p[distance=0..5] run setblock ~ ~-1 ~ netherrack


##tp up
execute unless block ~ ~ ~ #minecraft:enchantment_power_transmitter run tp @s ~ ~0.1 ~

execute store result score @s cryptid.player.random run random value 1..1000

execute if score @s cryptid.player.random matches 2 run function cryptid:events/quietkill

damage @p[distance=0..1] 0.5 minecraft:cramming by @e[tag=cryptid, sort=nearest, limit=1, type=minecraft:armor_stand]

tag @p[distance=0..1] add cryptid.glitchscreen

##sound
playsound minecraft:block.lava.ambient ambient @a[distance=0..10] ~ ~ ~ 0.1 0.1