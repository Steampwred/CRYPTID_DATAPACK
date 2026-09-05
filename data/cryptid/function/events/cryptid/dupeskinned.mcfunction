summon vindicator ~1 ~0.5 ~ {IsBaby:1,CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.skinned_philogen"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.skinned"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1304},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

summon vindicator ~ ~1 ~1 {IsBaby:1,CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.skinned_philogen"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.skinned"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1304},count:1}],ArmorDropChances:[0f,0f,0f,0f]}



effect give @e[type=vindicator, sort=nearest, tag=cryptid.skinned] minecraft:invisibility infinite 1 true

effect give @e[type=vindicator, sort=nearest, tag=cryptid.skinned] minecraft:speed infinite 1 true

execute as @e[type=vindicator, sort=nearest, tag=cryptid.skinned] at @s run attribute @s minecraft:generic.jump_strength base set 0.3

execute as @e[type=vindicator, sort=nearest, tag=cryptid.skinned] at @s run attribute @s minecraft:generic.step_height base set 5

execute as @e[type=vindicator, tag=cryptid.skinned, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickskinned"}
execute as @e[type=minecraft:vindicator, tag=cryptid.skinned] at @s run attribute @s minecraft:generic.scale base set 0.4

execute positioned ~ ~620 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.skinned,limit=1] cryptid.mob.class 3