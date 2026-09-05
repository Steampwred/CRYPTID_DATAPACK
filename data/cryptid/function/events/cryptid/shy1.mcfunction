summon sheep ^ ^1 ^-6 {DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"entity.cryptid.shy.name"}]',Tags:["cryptid","cryptid.shy"],Sheared:1,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.gravity",base:0.7f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:120f}]}

execute positioned ^ ^1 ^-6 run effect give @e[type=sheep, sort=nearest, tag=cryptid.shy] minecraft:invisibility infinite 1 true

execute positioned ^ ^1 ^-6 run effect give @e[type=sheep, sort=nearest, tag=cryptid.shy] minecraft:slowness infinite 1 true

execute positioned ^ ^1 ^-6 run attribute @e[type=sheep, sort=nearest, tag=cryptid.shy,limit=1] minecraft:generic.jump_strength base set 0.3

execute positioned ^ ^1 ^-6 run attribute @e[type=sheep, sort=nearest, tag=cryptid.shy,limit=1] minecraft:generic.step_height base set 5


execute positioned ^ ^1 ^-6 run scoreboard players set @e[type=sheep, sort=nearest, tag=cryptid.shy,limit=1] cryptid.mob.class 2

execute as @e[type=sheep, tag=cryptid.shy, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickshy"}

execute as @e[type=sheep, sort=random, limit=1, tag=cryptid.shy] at @s run function cryptid:action/general/placerandom {"min":"5","max":"20","underheight":"500"}
