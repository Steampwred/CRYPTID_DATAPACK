summon vindicator ~ ~620 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.bloodflare.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.jelly"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1308},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.jelly] minecraft:invisibility infinite 1 true


execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.jelly] minecraft:strength infinite 2 true

execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.jelly,limit=1] minecraft:generic.jump_strength base set 0.3


execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.jelly,limit=1] minecraft:generic.step_height base set 8

execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.jelly,limit=1] minecraft:generic.scale base set 2

execute positioned ~ ~620 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.jelly,limit=1] cryptid.mob.class 4
execute positioned ~ ~620 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.jelly,limit=1] cryptid.phase 1


execute as @e[type=vindicator, tag=cryptid.jelly, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickjelly"}

##spread randoim
execute positioned ~ ~620 ~ as @e[type=vindicator, sort=nearest, limit=1, tag=cryptid.jelly] at @s run function cryptid:action/general/placerandom {"min":"10","max":"90","underheight":"500"}
