execute store result score @s cryptid.player.random run random value 1..11
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.watcher.watching","color":"red"}


summon vindicator ~ ~620 ~ {NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.titanic_monmouth"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.watcher"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1307},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.watcher] minecraft:invisibility infinite 1 true

execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.watcher] minecraft:speed infinite 1 true

execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.watcher] minecraft:strength infinite 2 true

execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.watcher,limit=1] minecraft:generic.jump_strength base set 0.3

execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.watcher,limit=1] minecraft:generic.scale base set 10


execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.watcher,limit=1] minecraft:generic.step_height base set 40


execute positioned ~ ~620 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.watcher,limit=1] cryptid.mob.class 3

execute as @e[type=vindicator, tag=cryptid.watcher, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickwatcher"}

execute positioned ~ ~620 ~ as @e[type=vindicator, sort=nearest, limit=1, tag=cryptid.watcher] at @s run function cryptid:action/general/placerandom {"min":"80","max":"130","underheight":"500"}