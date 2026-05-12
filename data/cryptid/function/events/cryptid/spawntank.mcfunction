tellraw @s {"text":":)","color":"red"}

summon vindicator ^ ^-10 ^-20 {CanBreakDoors:1,CustomName:'[{"text":"Stagnant"}]',Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.tank"],active_effects:[{id:invisibility,duration:-1,amplifier:1,show_particles:0b}],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1314},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ^ ^-10 ^-20 run summon lightning_bolt


execute positioned ^ ^-10 ^-20 run effect give @e[type=vindicator, sort=nearest, tag=cryptid.tank] minecraft:invisibility infinite 1 true

execute positioned ^ ^-10 ^-20 run effect give @e[type=vindicator, sort=nearest, tag=cryptid.tank] minecraft:speed infinite 1 true

execute positioned ^ ^-10 ^-20 run effect give @e[type=vindicator, sort=nearest, tag=cryptid.tank] minecraft:strength infinite 0 true

execute positioned ^ ^-10 ^-20 run attribute @e[type=vindicator, sort=nearest, tag=cryptid.tank,limit=1] minecraft:generic.step_height base set 10

execute positioned ^ ^-10 ^-20 run attribute @e[type=vindicator, sort=nearest, tag=cryptid.tank,limit=1] minecraft:generic.water_movement_efficiency base set 10

execute positioned ^ ^-10 ^-20 run attribute @e[type=vindicator, sort=nearest, tag=cryptid.tank,limit=1] minecraft:generic.fall_damage_multiplier base set 0

execute positioned ^ ^-10 ^-20 run attribute @e[type=vindicator, sort=nearest, tag=cryptid.tank,limit=1] minecraft:generic.gravity base set 20

execute positioned ^ ^-10 ^-20 run attribute @e[type=vindicator, sort=nearest, tag=cryptid.tank,limit=1] minecraft:generic.scale base set 2
execute positioned ^ ^-10 ^-20 run attribute @e[type=vindicator, sort=nearest, tag=cryptid.tank,limit=1] minecraft:generic.follow_range base set 20000

execute positioned ^ ^-10 ^-20 run attribute @e[type=vindicator, sort=nearest, tag=cryptid.tank,limit=1] minecraft:generic.knockback_resistance base set 200000


execute positioned ^ ^-10 ^-20 run attribute @e[type=vindicator, sort=nearest, tag=cryptid.tank,limit=1] minecraft:generic.movement_speed base set 0.3

execute as @e[type=vindicator, tag=cryptid.tank, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticktank"}


execute positioned ^ ^-10 ^-20 run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.tank,limit=1] cryptid.mob.class 5

function cryptid:events/cryptid/flicker3





