summon vindicator ~ ~620 ~ {CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.voracious_philogen"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.chomper"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1364},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ ~620 ~ run execute as @e[type=vindicator, sort=nearest, tag=cryptid.chomper,limit=1] at @s run function cryptid:action/stats/chomper

execute as @e[type=vindicator, tag=cryptid.chomper, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickchomper"}


execute at @p if entity @p[y=60, dy=1000] run execute positioned ~ ~620 ~ as @e[type=vindicator, sort=nearest, limit=1, tag=cryptid.chomper] at @s run function cryptid:action/general/placerandom {"min":"40","max":"70","underheight":"500"}

execute at @p if entity @p[y=60, dy=-1000] run execute positioned ~ ~620 ~ as @e[type=vindicator, sort=nearest, limit=1, tag=cryptid.chomper] at @s run function cryptid:action/general/placerandom {"min":"40","max":"70","underheight":"60"}