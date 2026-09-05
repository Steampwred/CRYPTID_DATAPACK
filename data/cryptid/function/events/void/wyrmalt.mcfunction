execute store result score @s cryptid.player.random run random value 1..7


execute if score @s cryptid.player.random matches 1 run summon armor_stand ~80 -50 ~80 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.void_wyrm","color":"dark_red"}]',Tags:["cryptid","cryptid.voidwyrm"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1406},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 2 run summon armor_stand ~-90 -50 ~30 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.void_wyrm","color":"dark_red"}]',Tags:["cryptid","cryptid.voidwyrm"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1406},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 3 run summon armor_stand ~20 -50 ~100 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.void_wyrm","color":"dark_red"}]',Tags:["cryptid","cryptid.voidwyrm"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1406},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 4 run summon armor_stand ~40 -50 ~60 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.void_wyrm","color":"dark_red"}]',Tags:["cryptid","cryptid.voidwyrm"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1406},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 5 run summon armor_stand ~70 -50 ~-80 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.void_wyrm","color":"dark_red"}]',Tags:["cryptid","cryptid.voidwyrm"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1406},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 6 run summon armor_stand ~-60 -50 ~-30 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.void_wyrm","color":"dark_red"}]',Tags:["cryptid","cryptid.voidwyrm"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1406},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 7 run summon armor_stand ~20 -50 ~-50 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.void_wyrm","color":"dark_red"}]',Tags:["cryptid","cryptid.voidwyrm"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1406},count:1}],drop_chances:{head:0f}}



execute as @e[type=armor_stand, tag=cryptid.voidwyrm, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickvoidwyrmalt"}



execute as @e[tag=cryptid.voidwyrm, type=minecraft:armor_stand, sort=nearest, limit=1] at @s run tp @s ^ ^ ^40 facing entity @e[sort=random, limit=1]
execute as @e[tag=cryptid.voidwyrm, type=minecraft:armor_stand] at @s run tp @s ~ ~ ~ ~ 0


execute as @e[type=minecraft:armor_stand,tag=cryptid.voidwyrm] at @s run attribute @s minecraft:generic.scale base set 16

playsound minecraft:cryptid.bone.knock ambient @p[distance=0..100] ~ ~-100 ~ 100 0.1