summon armor_stand ~ ~-20 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"translate":"cryptid.entity.earth_philogen"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.mouth"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1348},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ ~-20 ~ run effect give @e[type=armor_stand, sort=nearest, tag=cryptid.mouth] minecraft:invisibility infinite 1 true
effect give @a[distance=0..5] minecraft:slowness 3 3 true
execute positioned ~ ~-20 ~ run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.mouth,limit=1] cryptid.mob.class 2

execute as @e[type=armor_stand, sort=nearest,limit=1, tag=cryptid.mouth] run execute store result entity @s ArmorItems[3].components.potion_contents.custom_color int 1 run scoreboard players get .global cryptid.anitimer

execute as @e[type=armor_stand, sort=nearest,limit=1, tag=cryptid.mouth] run tp @s ~ ~-1 ~

playsound minecraft:entity.warden.emerge ambient @a[distance=0..30] ~ ~ ~ 1 0.8
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 minecraft:netherrack replace #minecraft:base_stone_overworld

execute as @e[type=armor_stand, tag=cryptid.mouth, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickmouth"}


tag @s add cryptid.mouthtarget