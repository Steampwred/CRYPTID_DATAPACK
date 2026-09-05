tellraw @s {"translate":"cryptid.event.eyewatcher.see_you","color":"red"}


summon armor_stand ~-50 ~20 ~-50 {CustomName:'[{"translate":"cryptid.entity.visionary","color":"dark_red"}]',NoGravity:1, Tags:["cryptid","cryptid.eyewatcher"], ShowArms:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1321},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


execute as @e[type=armor_stand, tag=cryptid.eyewatcher, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickeyewatcher"}


scoreboard players set @e[tag=cryptid.eyewatcher] cryptid.mob.class 5