execute store result score @s cryptid.player.random run random value 1..10
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.whale.feel_you","color":"red"}


execute if score @s cryptid.player.random matches 1 run summon armor_stand ~40 ~30 ~40 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.maleficent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.whale"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1334},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 2 run summon armor_stand ~-25 ~30 ~20 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.maleficent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.whale"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1334},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 3 run summon armor_stand ~72 ~60 ~-20 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.maleficent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.whale"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1334},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 4 run summon armor_stand ~-23 ~30 ~65 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.maleficent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.whale"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1334},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 5 run summon armor_stand ~80 ~10 ~90 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.maleficent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.whale"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1334},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 6 run summon armor_stand ~30 ~70 ~-30 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.maleficent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.whale"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1334},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 7 run summon armor_stand ~10 ~60 ~-40 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.maleficent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.whale"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1334},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 8 run summon armor_stand ~30 ~20 ~-35 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.maleficent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.whale"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1334},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 9 run summon armor_stand ~-65 ~40 ~40 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.maleficent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.whale"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1334},count:1}],drop_chances:{head:0f}}

execute if score @s cryptid.player.random matches 10 run summon armor_stand ~70 ~30 ~40 {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.maleficent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.whale"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1334},count:1}],drop_chances:{head:0f}}


execute as @e[type=armor_stand, tag=cryptid.whale, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickwhale"}



execute as @e[tag=cryptid.whale, type=minecraft:armor_stand, sort=nearest, limit=1] at @s run tp @s ^ ^ ^40 facing entity @e[sort=random, limit=1]
execute as @e[tag=cryptid.whale, type=minecraft:armor_stand] at @s run tp @s ~ ~ ~ ~ 0


execute as @e[type=minecraft:armor_stand,tag=cryptid.whale] at @s run attribute @s minecraft:generic.scale base set 16

playsound minecraft:cryptid.whale.spawn ambient @a[distance=0..100] ~50 ~100 ~50 100 1.2