execute store result score @s cryptid.player.random run random value 1..10
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.skygrabber.feel_you","color":"red"}

summon armor_stand ~ 300 ~ {Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.silent_behemoth","color":"dark_red"}]',Tags:["cryptid","cryptid.skygrabber"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1370},count:1}],drop_chances:{head:0f}}


##random rotation





##finalize
execute as @e[type=armor_stand, tag=cryptid.skygrabber, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickskygrabber"}

execute as @e[type=minecraft:armor_stand,tag=cryptid.skygrabber] at @s run attribute @s minecraft:generic.scale base set 36

playsound minecraft:cryptid.fog.ambient ambient @a[distance=0..100] ~50 ~100 ~50 100 1.2