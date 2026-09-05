summon vindicator ~ ~-5 ~ {Invisible:1,CustomNameVisible:1b,CustomName:'[{"translate":"cryptid.entity.phantom_stalwart"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.glitch","cryptid.deci4"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1333},count:1}],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.armor",base:15f},{id:"generic.max_health",base:30f},{id:"generic.gravity",base:0.1f},{id:"generic.follow_range",base:32f},{id:"generic.water_movement_efficiency",base:0f},{id:"piglin.spawn_reinforcements",base:10f}]}

summon armor_stand ~ ~ ~ {Invisible:1,CustomNameVisible:1b,CustomName:'[{"text":"\\ua010","font":"minecraft:images"}]', Tags:["cryptid.glitchface"]}

stopsound @a

execute as @e[tag=cryptid.glitchface, type=minecraft:armor_stand] at @s run ride @s mount @e[type=minecraft:vindicator, tag=cryptid.deci4, limit=1, sort=nearest]

execute as @e[tag=cryptid.deci4, type=vindicator] at @s run attribute @s minecraft:generic.scale base set 1.5
execute as @e[tag=cryptid.deci4, type=vindicator] at @s run attribute @s minecraft:generic.knockback_resistance base set 20
execute as @e[tag=cryptid.deci4, type=vindicator] at @s run attribute @s minecraft:generic.follow_range base set 10000000
execute as @e[tag=cryptid.deci4, type=vindicator] at @s run scoreboard players set @s cryptid.mob.class 6
execute as @e[tag=cryptid.deci4, type=vindicator] at @s run effect give @s resistance infinite 255 true


execute as @e[type=minecraft:armor_stand, tag=cryptid.glitchface] at @s run attribute @s minecraft:generic.scale base set 0.1

tellraw @a[distance=0..70] ["",{"translate":"cryptid.event.glitch.has_arrived","bold":true,"color":"red"},"\n "]
playsound minecraft:cryptid.high.spawn ambient @a[distance=0..70] ~ ~ ~ 10 1

effect give @e[tag=cryptid.deci4, type=vindicator] minecraft:invisibility infinite 3 true
effect give @e[tag=cryptid.deci4, type=vindicator] minecraft:strength infinite 1 true
effect give @e[tag=cryptid.deci4, type=vindicator] minecraft:resistance infinite 10 true
effect give @e[tag=cryptid.deci4, type=vindicator] minecraft:slowness infinite 1 true
execute as @e[type=vindicator,tag=cryptid.deci4] at @s run team join cryptid.glitch @s

execute as @e[type=vindicator, tag=cryptid.glitch, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickglitch"}