execute store result score @s cryptid.player.random run random value 1..100

##deci1

execute if score @s cryptid.player.random matches 1..30 run summon piglin ~ ~ ~ {IsImmuneToZombification:1,CustomName:'[{"translate":"cryptid.entity.crumpled_dreadnought"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.decimator","cryptid.deci1"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1327},count:1}],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.armor",base:15f},{id:"generic.max_health",base:20f},{id:"generic.gravity",base:0.1f},{id:"generic.follow_range",base:32f},{id:"generic.water_movement_efficiency",base:0f},{id:"piglin.spawn_reinforcements",base:10f}]}


execute as @e[tag=cryptid.deci1, type=piglin] at @s run attribute @s minecraft:generic.step_height base set 3
execute as @e[tag=cryptid.deci1, type=piglin] at @s run attribute @s minecraft:generic.knockback_resistance base set 0.3
execute as @e[tag=cryptid.deci1, type=piglin] at @s run attribute @s minecraft:generic.follow_range base set 1000
execute as @e[tag=cryptid.deci1, type=piglin] at @s run scoreboard players set @s cryptid.mob.class 5


effect give @e[tag=cryptid.deci1, type=piglin] minecraft:weakness infinite 2 true
effect give @e[tag=cryptid.deci1, type=piglin] minecraft:slowness infinite 2 true
effect give @e[tag=cryptid.deci1, type=piglin] minecraft:invisibility infinite 3 true
effect give @e[tag=cryptid.deci1, type=piglin] minecraft:resistance infinite 2 true

execute as @e[type=piglin, tag=cryptid.deci1, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdecimator"}


##deci2

execute if score @s cryptid.player.random matches 30..50 run summon vindicator ~ ~ ~ {IsImmuneToZombification:1,CustomName:'[{"translate":"cryptid.entity.iron_dreadnought"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.minecart","cryptid.deci2"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1331},count:1}],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.armor",base:15f},{id:"generic.max_health",base:30f},{id:"generic.gravity",base:0.1f},{id:"generic.follow_range",base:32f},{id:"generic.water_movement_efficiency",base:0f},{id:"piglin.spawn_reinforcements",base:10f}]}


execute as @e[tag=cryptid.deci2, type=vindicator] at @s run attribute @s minecraft:generic.step_height base set 7
execute as @e[tag=cryptid.deci2, type=vindicator] at @s run attribute @s minecraft:generic.knockback_resistance base set 20
execute as @e[tag=cryptid.deci2, type=vindicator] at @s run attribute @s minecraft:generic.follow_range base set 10000000
execute as @e[tag=cryptid.deci2, type=vindicator] at @s run scoreboard players set @s cryptid.mob.class 5



effect give @e[tag=cryptid.deci2, type=vindicator] minecraft:invisibility infinite 3 true
effect give @e[tag=cryptid.deci2, type=vindicator] minecraft:strength infinite 1 true
effect give @e[tag=cryptid.deci2, type=vindicator] minecraft:resistance infinite 1 true

execute as @e[type=vindicator, tag=cryptid.deci2, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdeci2"}


##deci3

execute if score @s cryptid.player.random matches 50..70 run summon vindicator ~ ~ ~ {IsImmuneToZombification:1,CustomName:'[{"translate":"cryptid.entity.temple_of_greed"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.pillar","cryptid.deci3"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1332},count:1}],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.armor",base:15f},{id:"generic.max_health",base:30f},{id:"generic.gravity",base:0.1f},{id:"generic.follow_range",base:32f},{id:"generic.water_movement_efficiency",base:0f},{id:"piglin.spawn_reinforcements",base:10f}]}


execute as @e[tag=cryptid.deci3, type=vindicator] at @s run attribute @s minecraft:generic.step_height base set 1
execute as @e[tag=cryptid.deci3, type=vindicator] at @s run attribute @s minecraft:generic.knockback_resistance base set 20
execute as @e[tag=cryptid.deci3, type=vindicator] at @s run attribute @s minecraft:generic.follow_range base set 10000000
execute as @e[tag=cryptid.deci3, type=vindicator] at @s run scoreboard players set @s cryptid.mob.class 4



effect give @e[tag=cryptid.deci3, type=vindicator] minecraft:invisibility infinite 3 true
effect give @e[tag=cryptid.deci3, type=vindicator] minecraft:strength infinite 1 true
effect give @e[tag=cryptid.deci3, type=vindicator] minecraft:resistance infinite 10 true
effect give @e[tag=cryptid.deci3, type=vindicator] minecraft:slowness infinite 3 true

execute as @e[type=vindicator, tag=cryptid.deci3, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdeci3"}


##thug occultguy

execute if score @s cryptid.player.random matches 70..95 run summon zombified_piglin ~ ~ ~ {IsImmuneToZombification:1,IsBaby:true,CustomName:'[{"translate":"cryptid.entity.occult_crimson"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.occult"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1339},count:1}],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.armor",base:19f},{id:"generic.max_health",base:60f},{id:"generic.gravity",base:0.1f},{id:"generic.follow_range",base:32f},{id:"generic.water_movement_efficiency",base:0f},{id:"piglin.spawn_reinforcements",base:10f}]}


execute as @e[tag=cryptid.occult, type=zombified_piglin] at @s run attribute @s minecraft:generic.scale base set 2.5
execute as @e[tag=cryptid.occult, type=zombified_piglin] at @s run attribute @s minecraft:generic.step_height base set 3
execute as @e[tag=cryptid.occult, type=zombified_piglin] at @s run attribute @s minecraft:generic.knockback_resistance base set 20
execute as @e[tag=cryptid.occult, type=zombified_piglin] at @s run attribute @s minecraft:generic.follow_range base set 10000000
execute as @e[tag=cryptid.occult, type=zombified_piglin] at @s run scoreboard players set @s cryptid.mob.class 3



effect give @e[tag=cryptid.occult, type=zombified_piglin] minecraft:invisibility infinite 3 true





execute as @e[type=zombified_piglin, tag=cryptid.occult, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickoccult"}