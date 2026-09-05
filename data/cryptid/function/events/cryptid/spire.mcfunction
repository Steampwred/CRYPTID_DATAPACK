execute store result score @s cryptid.random run random value 1..12
execute if score @s cryptid.random matches 1 run tellraw @s {"translate":"chat.cryptid.event.world_now","color":"red"}

execute store result score @s cryptid.random run random value 1..3

execute if score @s cryptid.random matches 1 run summon armor_stand ~ ~420 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.earthen_spire.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.spire"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1380},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute if score @s cryptid.random matches 2 run summon armor_stand ~ ~421 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.earthen_spire.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.spire"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1381},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute if score @s cryptid.random matches 3 run summon armor_stand ~ ~422 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.earthen_spire.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.spire"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1382},count:1}],ArmorDropChances:[0f,0f,0f,0f]}








execute as @e[tag=cryptid.spire, type=minecraft:armor_stand] at @s run attribute @s minecraft:generic.scale base set 100
execute positioned ~ ~420 ~ run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.spire,limit=1] cryptid.mob.class 2

execute as @e[type=armor_stand, tag=cryptid.spire, tag=!cryptid.markerapplied] at @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]

execute as @e[type=armor_stand, tag=cryptid.spire, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickspire"}

execute positioned ~ ~420 ~ as @e[type=armor_stand, sort=nearest, limit=1, tag=cryptid.spire] at @s run function cryptid:action/general/placerandom {"min":"10","max":"60","underheight":"500"}

function cryptid:events/cryptid/flicker
