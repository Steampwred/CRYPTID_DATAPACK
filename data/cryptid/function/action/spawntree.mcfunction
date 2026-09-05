execute store result score @s cryptid.player.random run random value 1..3

execute if score @s cryptid.player.random matches 1 run function cryptid:events/underground/quake2
summon minecraft:armor_stand ~ ~-10 ~ {CustomName:'[{"translate":"entity.cryptid.living_bark.name"}]', Silent:1, Invisible:1, Tags:["cryptid","cryptid.tree"]}

execute if score @s cryptid.player.random matches 1 run item replace entity @e[type=armor_stand, sort=nearest, tag=cryptid.tree, limit=1] armor.head with potion[minecraft:custom_model_data=1345]
execute if score @s cryptid.player.random matches 2 run item replace entity @e[type=armor_stand, sort=nearest, tag=cryptid.tree, limit=1] armor.head with potion[minecraft:custom_model_data=1346]

execute as @e[type=armor_stand, tag=cryptid.tree, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticktree"}

scoreboard players set @e[tag=cryptid.tree,type=armor_stand] cryptid.mob.class 2
