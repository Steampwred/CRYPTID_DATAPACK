
summon husk ~ ~620 ~ {Silent:1, CustomName:'[{text:"Sky Philogen",color:dark_red}]',NoGravity:1, Tags:["cryptid","cryptid.owl"], ShowArms:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1365},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

effect give @e[tag=cryptid.owl, type=husk] invisibility infinite 1 true
scoreboard players set @e[tag=cryptid.eyewatcher, type=husk] cryptid.mob.class 1


execute as @e[type=husk, tag=cryptid.owl, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickowl"}


execute positioned ~ ~620 ~ as @e[type=husk, sort=nearest, limit=1, tag=cryptid.owl] at @s run function cryptid:action/general/placerandom {"min":"10","max":"30","underheight":"500"}

