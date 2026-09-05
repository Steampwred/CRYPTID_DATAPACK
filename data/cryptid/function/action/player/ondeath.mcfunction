##wall

stopsound @s ambient minecraft:cryptid.wall.dig
playsound minecraft:cryptid.wall.end ambient @s[tag=wall.chasing]
tag @s remove wall.chasing
tag @s remove cryptid.handed
tag @s remove chained
tag @s remove trap.trapped


##other
scoreboard players remove @s cryptid.maxlives 1
playsound minecraft:cryptid.soul.trap ambient @s
##killingcryptyids
execute unless entity @a[distance=0.1..70] run kill @e[tag=cryptid, sort=nearest, limit=3, distance=0..7,tag=!cryptid.totem2,tag=!cryptid.lessertotem,tag=!cryptid.catcher,tag=!cryptid.worldsky]

scoreboard players set @s cryptid.player.harmony 0


##kill all lost souls prior to spawning a new one
kill @e[type=minecraft:vindicator, tag=cryptid.digger]

summon vindicator ~ ~ ~ {CustomName:'[{"translate":"cryptid.entity.lost_soul","color":"red"}]', Tags:["cryptid", "cryptid.digger"], Silent:1b, ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1303},count:1}],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.knockback_resistance",base:0.7f},{id:"generic.follow_range",base:50f}]}
scoreboard players set @e[tag=cryptid.digger,type=vindicator] cryptid.mob.class 2

execute as @e[type=vindicator, tag=cryptid.digger, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdigger"}


tellraw @a ["",{"color":"dark_red","bold":true,"selector":"@s"},{"translate":"chat.cryptid.lost_life","color":"dark_red","bold":true}]
scoreboard players set @s cryptid.deaths 0





##hints
execute store result score @s cryptid.random run random value 1..25

execute if score @s cryptid.random matches 1 run tellraw @s [{"translate":"chat.cryptid.hint.1","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 2 run tellraw @s [{"translate":"chat.cryptid.hint.2","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 3 run tellraw @s [{"translate":"chat.cryptid.hint.3","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 4 run tellraw @s [{"translate":"chat.cryptid.hint.4","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 5 run tellraw @s [{"translate":"chat.cryptid.hint.5","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 6 run tellraw @s [{"translate":"chat.cryptid.hint.6","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 7 run tellraw @s [{"translate":"chat.cryptid.hint.7","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 8 run tellraw @s [{"translate":"chat.cryptid.hint.8","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 9 run tellraw @s [{"translate":"chat.cryptid.hint.9","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 10 run tellraw @s [{"translate":"chat.cryptid.hint.10","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 12 run tellraw @s [{"translate":"chat.cryptid.hint.12","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 13 run tellraw @s [{"translate":"chat.cryptid.hint.13","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 14 run tellraw @s [{"translate":"chat.cryptid.hint.14","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 15 run tellraw @s [{"translate":"chat.cryptid.hint.15","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 16 run tellraw @s [{"translate":"chat.cryptid.hint.16","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 17 run tellraw @s [{"translate":"chat.cryptid.hint.17","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 18..19 run tellraw @s [{"translate":"chat.cryptid.hint.18","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 20..21 run tellraw @s [{"translate":"chat.cryptid.hint.20","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 23 run tellraw @s [{"translate":"chat.cryptid.hint.23","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 24 run tellraw @s [{"translate":"chat.cryptid.hint.24","color":"dark_red","bold":false}]