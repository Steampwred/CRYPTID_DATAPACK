execute store result score @s cryptid.player.random run random value 1..3
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.creed.meet_eye","color":"red"}


summon vindicator ~ ~621 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~622 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~623 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~624 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~625 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~626 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~627 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~628 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~629 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~610 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~630 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.creed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.creed"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1344},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.creed] minecraft:invisibility infinite 1 true

execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.creed] minecraft:slowness infinite 100 true

execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.creed] minecraft:strength infinite 2 true

execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.creed,limit=1] minecraft:generic.jump_strength base set 0.3

execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.creed,limit=1] minecraft:generic.scale base set 1


execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.creed,limit=1] minecraft:generic.step_height base set 40

execute positioned ~ ~620 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.creed,limit=1] cryptid.mob.class 2

execute as @e[type=vindicator, tag=cryptid.creed, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickcreed"}



execute positioned ~ ~620 ~ run spreadplayers ~ ~ 40 80 false @e[type=vindicator, sort=nearest, tag=cryptid.creed]
execute as @e[type=vindicator, sort=nearest, limit=1, tag=cryptid.creed] at @s run playsound minecraft:ambient.cave ambient @a[distance=0..50]



function cryptid:events/cryptid/flicker2