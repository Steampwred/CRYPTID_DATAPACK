execute store result score @s cryptid.player.random run random value 1..7
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.tortured.it_hurts","color":"red"}

summon zombified_piglin ~ ~620 ~ {DisabledSlots:4144959, Invisible:1, CanBreakDoors:1,zombified_piglinConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.tortured"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.tortured"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1361},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ ~620 ~ run effect give @e[type=zombified_piglin, sort=nearest, tag=cryptid.tortured] minecraft:invisibility infinite 1 true

execute positioned ~ ~620 ~ run effect give @e[type=zombified_piglin, sort=nearest, tag=cryptid.tortured] minecraft:speed infinite 1 true

execute positioned ~ ~620 ~ run effect give @e[type=zombified_piglin, sort=nearest, tag=cryptid.tortured] minecraft:weakness infinite 4 true
execute positioned ~ ~620 ~ run effect give @e[type=zombified_piglin, sort=nearest, tag=cryptid.tortured] minecraft:regeneration infinite 255 true

execute positioned ~ ~620 ~ run attribute @e[type=zombified_piglin, sort=nearest, tag=cryptid.tortured,limit=1] minecraft:generic.step_height base set 40
execute positioned ~ ~620 ~ run attribute @e[type=zombified_piglin, sort=nearest, tag=cryptid.tortured,limit=1] minecraft:generic.safe_fall_distance base set 4000
execute positioned ~ ~620 ~ run attribute @e[type=zombified_piglin, sort=nearest, tag=cryptid.tortured,limit=1] minecraft:generic.follow_range base set 4000
execute positioned ~ ~620 ~ run attribute @e[type=zombified_piglin, sort=nearest, tag=cryptid.tortured,limit=1] minecraft:generic.water_movement_efficiency base set 4000


execute positioned ~ ~620 ~ run scoreboard players set @e[type=zombified_piglin, sort=nearest, tag=cryptid.tortured,limit=1] cryptid.mob.class 3



execute as @e[type=zombified_piglin, tag=cryptid.tortured, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticktortured"}




##placerandom
execute as @s at @s[y=60, dy=1000] run execute positioned ~ ~620 ~ as @e[type=zombified_piglin, sort=nearest, limit=1, tag=cryptid.tortured] at @s run function cryptid:action/general/placerandom {"min":"10","max":"20","underheight":"500"}
execute as @s at @s[y=60, dy=-1000] run execute positioned ~ ~620 ~ as @e[type=zombified_piglin, sort=nearest, limit=1, tag=cryptid.tortured] at @s run function cryptid:action/general/placerandom {"min":"10","max":"20","underheight":"60"}



playsound minecraft:cryptid.congratulations ambient @a[distance=0..60] ~50 ~100 ~ 50 0.5


function cryptid:events/cryptid/owl