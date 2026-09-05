summon armor_stand ~ ~ ~ {DisabledSlots:4144959, Invisible:1b, NoGravity:1b, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"entity.cryptid.head_snake.name"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.headpeeper","cryptid.timer"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1399},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.headpeeper] cryptid.mob.class 3
execute as @e[type=armor_stand, tag=cryptid.headpeeper, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickheadpeeper"}
execute as @e[type=armor_stand, tag=cryptid.headpeeper] run attribute @s minecraft:generic.scale base set 6

kill @s
