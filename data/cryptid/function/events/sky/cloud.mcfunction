execute store result score @s cryptid.player.random run random value 1..10
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.cloud.error","color":"red"}


execute facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^50 positioned ~ ~120 ~ run summon armor_stand ~ ~ ~ {CustomName:'[{"translate":"cryptid.entity.sun_downer","color":"dark_red"}]', NoGravity:1, Tags:["cryptid","cryptid.cloud"], ShowArms:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1313},count:1}],ArmorDropChances:[0f,0f,0f,0f]}


execute as @e[type=armor_stand, tag=cryptid.cloud, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickcloud"}


playsound minecraft:cryptid.jelly.ambient ambient @a[distance=0..120] ~ ~90 ~ 120 0.7