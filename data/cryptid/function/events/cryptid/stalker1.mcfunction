summon vindicator ~ ~620 ~ {CanBreakDoors:1,CustomName:'[{"translate":"entity.cryptid.living_obelisk.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.stalker"],active_effects:[{id:invisibility,duration:-1,amplifier:1,show_particles:0b}],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1303},count:1}],ArmorDropChances:[0f,0f,0f,0f],attributes:[]}

execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.stalker] minecraft:invisibility infinite 1 true
execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.stalker] minecraft:slowness infinite 120 true
execute positioned ~ ~620 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.stalker] minecraft:strength infinite 1 true
execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.stalker,limit=1] minecraft:generic.jump_strength base set 0
execute positioned ~ ~620 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.stalker,limit=1] minecraft:generic.max_health base set 100


execute positioned ~ ~620 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.stalker,limit=1] cryptid.mob.class 2

execute as @e[type=vindicator, tag=cryptid.stalker, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickstalker"}

execute positioned ~ ~620 ~ as @e[type=vindicator, sort=nearest, limit=1, tag=cryptid.stalker] at @s run function cryptid:action/general/placerandom {"min":"30","max":"80","underheight":"500"}

function cryptid:events/cryptid/flicker2
