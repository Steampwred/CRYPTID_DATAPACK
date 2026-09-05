execute store result score @s cryptid.player.random run random value 1..8
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"chat.cryptid.event.too_dark","color":"red"}



summon armor_stand ~ ~620 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.brightner.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.lamp"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1349},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon armor_stand ~ ~621 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.brightner.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.lamp"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1349},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon armor_stand ~ ~622 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.brightner.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.lamp"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1349},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon armor_stand ~ ~623 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.brightner.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.lamp"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1349},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon armor_stand ~ ~624 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.brightner.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.lamp"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1349},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


execute positioned ~ ~620 ~ run effect give @e[type=armor_stand, sort=nearest, tag=cryptid.lamp] minecraft:invisibility infinite 1 true

execute positioned ~ ~620 ~ run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.lamp] cryptid.mob.class 2

execute as @e[type=armor_stand, tag=cryptid.lamp, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticklamp"}


execute positioned ~ ~620 ~ as @e[type=armor_stand, sort=nearest, limit=1, tag=cryptid.lamp] at @s run function cryptid:action/general/placerandom {"min":"10","max":"60","underheight":"500"}
