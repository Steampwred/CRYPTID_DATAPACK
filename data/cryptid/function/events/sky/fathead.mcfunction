execute store result score @s cryptid.player.random run random value 1..7
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.fathead.redtears","color":"red"}

summon zombie ~ 200 ~ {PersistenceRequired:1b, Invisible:1, NoGravity:1, ShowArms:1b,DisabledSlots:4144959,CustomName:'[{"translate":"cryptid.entity.young_father","color":"dark_red"}]',Tags:["cryptid","cryptid.fathead","cryptid.lookcount"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1402},count:1}],drop_chances:{head:0f}}


##random rotation



execute as @e[type=zombie, tag=cryptid.fathead] at @s run effect give @s invisibility infinite 255 true


##finalize
execute as @e[type=zombie, tag=cryptid.fathead, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickfathead"}

execute as @e[type=minecraft:zombie,tag=cryptid.fathead] at @s run attribute @s minecraft:generic.scale base set 16

playsound minecraft:cryptid.whistle.old ambient @a[distance=0..100] ~50 ~100 ~50 100 1.2