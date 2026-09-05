summon minecraft:vindicator ^ ^1 ^-15 {DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.putrid_earth_anenome"}]',Tags:["cryptid","cryptid.swapper"],Sheared:1,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0.7f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:120f}]}

item replace entity @e[type=vindicator,tag=cryptid.swapper] armor.head with potion[minecraft:custom_model_data=1311]


execute positioned ^ ^1 ^-6 run effect give @e[type=vindicator, sort=nearest, tag=cryptid.swapper] minecraft:invisibility infinite 1 true


execute positioned ^ ^1 ^-6 run attribute @e[type=vindicator, sort=nearest, tag=cryptid.swapper,limit=1] minecraft:generic.jump_strength base set 0.3

execute positioned ^ ^1 ^-6 run attribute @s minecraft:generic.water_movement_efficiency base set 19238


execute positioned ^ ^1 ^-6 run attribute @e[type=vindicator, sort=nearest, tag=cryptid.swapper,limit=1] minecraft:generic.step_height base set 5


execute positioned ^ ^1 ^-6 run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.swapper,limit=1] cryptid.mob.class 2
execute as @e[type=vindicator, tag=cryptid.swapper, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickswapper"}


execute as @e[type=vindicator, sort=random, limit=1, tag=cryptid.swapper] at @s run playsound minecraft:ambient.crimson_forest.mood ambient @a[distance=0..50]