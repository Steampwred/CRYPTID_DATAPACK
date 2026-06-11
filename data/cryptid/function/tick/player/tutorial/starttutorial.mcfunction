
tp @s ~ 200 ~
stopsound @s
tag @s remove player.tutorial
execute positioned as @s run summon armor_stand ~ ~-5 ~ {NoGravity:1b,Invisible:1b, Tags:["cryptid","cryptid.spawnbox","cryptid.timer"]}
execute positioned as @s run item replace entity @e[type=armor_stand, sort=nearest, limit=1, tag=cryptid.spawnbox] armor.head with potion[custom_model_data=1376]
execute positioned as @s run attribute @e[type=armor_stand, sort=nearest, limit=1, tag=cryptid.spawnbox] minecraft:generic.scale base set 20
execute as @e[type=armor_stand, tag=cryptid.spawnbox, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickspawnbox"}






execute positioned as @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 barrier hollow