summon vindicator ~ ~620 ~ {IsBaby:1,CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.skinned_philogen.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.skinned"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1304},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ ~620 ~ run execute as @e[type=vindicator, sort=nearest, tag=cryptid.skinned] at @s run team join cryptid.nocollide @s


execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.skinned] minecraft:invisibility infinite 1 true

execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.skinned,limit=1] minecraft:generic.jump_strength base set 0.3

execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.skinned,limit=1] minecraft:generic.step_height base set 5


execute positioned ~ ~620 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.skinned] cryptid.mob.class 3


execute positioned ~ ~620 ~ as @e[type=vindicator, sort=nearest, limit=1, tag=cryptid.skinned] at @s run function cryptid:action/general/placerandom {"min":"40","max":"110","underheight":"500"}

execute as @e[type=vindicator, tag=cryptid.skinned, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickskinned"}


execute as @e[type=vindicator, sort=random, limit=1, tag=cryptid.skinned] at @s run function cryptid:events/cryptid/dupeskinned



function cryptid:events/cryptid/flicker5
