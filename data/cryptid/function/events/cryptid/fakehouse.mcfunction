summon armor_stand ~ ~420 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.fake_house"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.fakehouse"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1384},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon armor_stand ~ ~421 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.fake_house"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.fakehouse"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1384},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon armor_stand ~ ~422 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.fake_house"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.fakehouse"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1384},count:1}],ArmorDropChances:[0f,0f,0f,0f]}



##SOUNDS
stopsound @p
playsound minecraft:cryptid.house.fake ambient @a[distance=0..50] ~ ~ ~ 10 1.2

execute as @e[tag=cryptid.fakehouse, type=minecraft:armor_stand] at @s run attribute @s minecraft:generic.scale base set 100
scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.fakehouse] cryptid.mob.class 1

execute as @e[type=armor_stand, tag=cryptid.fakehouse, tag=!cryptid.markerapplied] at @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]

execute as @e[type=armor_stand, tag=cryptid.fakehouse, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickfakehouse"}

execute positioned ~ ~420 ~ as @e[type=armor_stand, sort=nearest, tag=cryptid.fakehouse] at @s run spreadplayers ~ ~ 30 20 false @s
scoreboard players reset .house cryptid.timer
tag @p add cryptid.housewalking

attribute @s minecraft:generic.jump_strength modifier add 666 -2 add_multiplied_base