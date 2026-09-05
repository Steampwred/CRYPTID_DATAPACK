execute store result score @s cryptid.player.random run random value 1..6000
execute if score @s cryptid.player.random matches 10..30 if entity @p[distance=0..30] run kill @e[tag=cryptid.spiral, type=armor_stand]

execute if score @s cryptid.player.random matches 1..4 run summon minecraft:armor_stand ~2 ~-4 ~2 {CustomName:'[{"translate":"cryptid.entity.spiral"}]',Invisible:1, NoGravity:1, Tags:["cryptid","cryptid.spiral"]}


execute if score @s cryptid.player.random matches 1..3000 run execute as @s at @s run execute as @s at @s anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^20 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~

execute if entity @p[distance=0..2] run kill @e[tag=cryptid.spiral, type=armor_stand]


tp @s ^ ^ ^1

setblock ~-2 ~4 ~ obsidian
setblock ~1 ~3 ~ netherrack