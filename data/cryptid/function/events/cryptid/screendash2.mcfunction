execute store result score @s cryptid.player.random run random value 1..4


execute if score @s cryptid.player.random matches 1 run execute anchored eyes run summon minecraft:zombie ^54 ^-2 ^43.5 {PersistenceRequired:1b, NoAI:1, NoGravity:1, Silent:1,CustomName:'[{"translate":"entity.cryptid.jester.name"}]',Invisible:1b, Tags:["cryptid","cryptid.sidescreen2"]}

execute if score @s cryptid.player.random matches 2 run execute anchored eyes run summon minecraft:zombie ^-58 ^-3 ^44.1 {PersistenceRequired:1b, NoAI:1, NoGravity:1, Silent:1,CustomName:'[{"translate":"entity.cryptid.jester.name"}]',Invisible:1b, Tags:["cryptid","cryptid.sidescreen2"]}

execute if score @s cryptid.player.random matches 3 run execute anchored eyes run summon minecraft:zombie ^-68 ^7 ^54.1 {PersistenceRequired:1b, NoAI:1, NoGravity:1, Silent:1,CustomName:'[{"translate":"entity.cryptid.jester.name"}]',Invisible:1b, Tags:["cryptid","cryptid.sidescreen2"]}

execute if score @s cryptid.player.random matches 4 run execute anchored eyes run summon minecraft:zombie ^64 ^5 ^40.1 {PersistenceRequired:1b, NoAI:1, NoGravity:1, Silent:1,CustomName:'[{"translate":"entity.cryptid.jester.name"}]',Invisible:1b, Tags:["cryptid","cryptid.sidescreen2"]}


execute store result score @s cryptid.player.random run random value 1..7


execute if score @s cryptid.player.random matches 1 run item replace entity @e[type=minecraft:zombie, sort=nearest, limit=5, tag=cryptid.sidescreen2] armor.head with potion[minecraft:custom_model_data=1338]
execute if score @s cryptid.player.random matches 2 run item replace entity @e[type=minecraft:zombie, sort=nearest, limit=5, tag=cryptid.sidescreen2] armor.head with potion[minecraft:custom_model_data=1339]
execute if score @s cryptid.player.random matches 3 run item replace entity @e[type=minecraft:zombie, sort=nearest, limit=5, tag=cryptid.sidescreen2] armor.head with potion[minecraft:custom_model_data=1344]
execute if score @s cryptid.player.random matches 4 run item replace entity @e[type=minecraft:zombie, sort=nearest, limit=5, tag=cryptid.sidescreen2] armor.head with potion[minecraft:custom_model_data=1351]
execute if score @s cryptid.player.random matches 5 run item replace entity @e[type=minecraft:zombie, sort=nearest, limit=5, tag=cryptid.sidescreen2] armor.head with potion[minecraft:custom_model_data=1358]
execute if score @s cryptid.player.random matches 6 run item replace entity @e[type=minecraft:zombie, sort=nearest, limit=5, tag=cryptid.sidescreen2] armor.head with potion[minecraft:custom_model_data=1361]
execute if score @s cryptid.player.random matches 7 run item replace entity @e[type=minecraft:zombie, sort=nearest, limit=5, tag=cryptid.sidescreen2] armor.head with potion[minecraft:custom_model_data=1377]

execute as @e[type=zombie, tag=cryptid.sidescreen2, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickscreendash2"}


execute as @e[type=minecraft:zombie, limit=5, sort=nearest, tag=cryptid.sidescreen2] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[type=minecraft:zombie, limit=5, sort=nearest, tag=cryptid.sidescreen2] at @s run effect give @s invisibility infinite 255 true
execute as @e[type=minecraft:zombie, limit=5, sort=nearest, tag=cryptid.sidescreen2] at @s run attribute @s generic.scale base set 0.3
