

summon armor_stand ~ ~420 ~ {DisabledSlots:4144959, Invisible:1, NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"Deep Lurker"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.kraken","cryptid.timer"],ArmorItems:[{},{},{},{}],ArmorDropChances:[0f,0f,0f,0f]}







execute as @e[tag=cryptid.kraken, type=minecraft:armor_stand] at @s run attribute @s minecraft:generic.scale base set 10
execute positioned ~ ~420 ~ run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.kraken,limit=1] cryptid.mob.class 2

execute as @e[type=armor_stand, tag=cryptid.kraken, tag=!cryptid.markerapplied] at @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]
execute as @e[type=armor_stand, tag=cryptid.kraken, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickkraken"}
