execute store result score @s cryptid.player.random run random value 1..40
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.altar.error","color":"red"}



summon armor_stand ~ ~620 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.sacrifice"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.altar"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1341},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ ~620 ~ run effect give @e[type=armor_stand, sort=nearest, tag=cryptid.altar] minecraft:invisibility infinite 1 true

execute positioned ~ ~620 ~ run effect give @e[type=armor_stand, sort=nearest, tag=cryptid.altar] minecraft:slowness infinite 255 true

execute positioned ~ ~620 ~ run effect give @e[type=armor_stand, sort=nearest, tag=cryptid.altar] minecraft:weakness infinite 4 true

execute positioned ~ ~620 ~ run attribute @e[type=armor_stand, sort=nearest, tag=cryptid.altar,limit=1] minecraft:generic.step_height base set 40


execute positioned ~ ~620 ~ run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.altar,limit=1] cryptid.mob.class 2

##placerandom
execute positioned ~ ~620 ~ as @e[type=armor_stand, sort=nearest, limit=1, tag=cryptid.altar] at @s run function cryptid:action/general/spawntickmarker {"name":"tickaltar"}


execute positioned ~ ~620 ~ as @e[type=armor_stand, sort=nearest, limit=1, tag=cryptid.altar] at @s run function cryptid:action/general/placerandom {"min":"20","max":"30","underheight":"500"}