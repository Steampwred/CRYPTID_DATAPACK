execute store result score @s cryptid.player.random run random value 1..15


execute if score @s cryptid.player.random matches 1..5 run execute anchored eyes run summon minecraft:armor_stand ^4 ^-4 ^4.5 {CustomName:'[{"translate":"entity.cryptid.jester.name"}]',Invisible:1b, Tags:["cryptid","cryptid.sidescreen"]}

execute if score @s cryptid.player.random matches 5..10 run execute anchored eyes run summon minecraft:armor_stand ^-3 ^-3 ^5.1 {CustomName:'[{"translate":"entity.cryptid.jester.name"}]',Invisible:1b, Tags:["cryptid","cryptid.sidescreen"]}

execute if score @s cryptid.player.random matches 10..15 run execute anchored eyes run summon minecraft:armor_stand ^2 ^2.6 ^4.1 {CustomName:'[{"translate":"entity.cryptid.jester.name"}]',Invisible:1b, Tags:["cryptid","cryptid.sidescreen"]}


execute if score @s cryptid.player.random matches 1 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1315]


execute if score @s cryptid.player.random matches 2 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1316]


execute if score @s cryptid.player.random matches 3 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1317]


execute if score @s cryptid.player.random matches 4 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1318]


execute if score @s cryptid.player.random matches 5 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1330]
execute if score @s cryptid.player.random matches 6 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1331]
execute if score @s cryptid.player.random matches 7 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1332]
execute if score @s cryptid.player.random matches 8 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1333]
execute if score @s cryptid.player.random matches 9 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1334]
execute if score @s cryptid.player.random matches 10 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1335]
execute if score @s cryptid.player.random matches 11 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1338]
execute if score @s cryptid.player.random matches 12 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1339]
execute if score @s cryptid.player.random matches 13 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1319]
execute if score @s cryptid.player.random matches 14 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1319]
execute if score @s cryptid.player.random matches 15 run item replace entity @e[type=minecraft:armor_stand, sort=nearest, limit=5, tag=cryptid.sidescreen] armor.head with potion[minecraft:custom_model_data=1341]

execute as @e[type=armor_stand, tag=cryptid.sidescreen, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticksidescreen"}


execute as @e[type=minecraft:armor_stand, limit=5, sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p


execute store result score @s cryptid.player.random run random value 1..6

execute if score @s cryptid.player.random matches 1 run execute as @e[distance=5..20, sort=nearest, limit=1, type=!player] at @s run function cryptid:events/underground/spawndecimator

execute if score @s cryptid.player.random matches 2 run execute as @e[distance=5..20, sort=nearest, limit=1, type=!player] at @s run function cryptid:events/underground/spawnhand

execute if score @s cryptid.player.random matches 3 run execute as @e[distance=5..20, sort=nearest, limit=1, type=!player] at @s run function cryptid:events/cryptid/sethostile
