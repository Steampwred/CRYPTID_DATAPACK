##wall

stopsound @s ambient minecraft:cryptid.wall.dig
playsound minecraft:cryptid.wall.end ambient @s[tag=wall.chasing]
tag @s remove wall.chasing



##other
scoreboard players remove @s cryptid.maxlives 1
playsound minecraft:cryptid.soul.trap ambient @s
##killingcryptyids
kill @e[tag=cryptid, sort=nearest, limit=3, distance=0..7]

scoreboard players set @s cryptid.player.harmony 0


##kill all lost souls prior to spawning a new one
kill @e[type=minecraft:vindicator, tag=cryptid.digger]

summon vindicator ~ ~ ~ {CustomName:'[{"text":"Lost Soul","color":"red"}]', Tags:["cryptid", "cryptid.digger"], Silent:1, ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1303},count:1}],ArmorDropChances:[0f,0f,0f,0f]}
scoreboard players set @e[tag=cryptid.digger,type=vindicator] cryptid.mob.class 2

execute as @e[type=vindicator, tag=cryptid.digger, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdigger"}


tellraw @a ["",{"color":"dark_red","bold":true,"selector":"@s"}," has lost a life!"]
scoreboard players set @s cryptid.deaths 0





##hints
execute store result score @s cryptid.random run random value 1..30

execute if score @s cryptid.random matches 1 run tellraw @s [{"text":"\n [HINT]: Don't stay out at night","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 2 run tellraw @s [{"text":"\n [HINT]: The lamposts are evil","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 3 run tellraw @s [{"text":"\n [HINT]: Look out for fake clouds","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 4 run tellraw @s [{"text":"\n [HINT]: Killing hearts gives harmony","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 5 run tellraw @s [{"text":"\n [HINT]: Pillaring up will not protect you","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 6 run tellraw @s [{"text":"\n [HINT]: Scared yet?","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 7 run tellraw @s [{"text":"\n [HINT]: Pyramids contain loot at the summit","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 8 run tellraw @s [{"text":"\n [HINT]: The deeper you go, the worse it gets","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 9 run tellraw @s [{"text":"\n [HINT]: The occult can hear you","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 10 run tellraw @s [{"text":"\n [HINT]: Possessed mobs walk like a horse","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 12 run tellraw @s [{"text":"\n [HINT]: Shotguns can be combined into quad barrel","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 13 run tellraw @s [{"text":"\n [HINT]: Radar can spawn the tortured","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 14 run tellraw @s [{"text":"\n [HINT]: If you hear noises, run","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 15 run tellraw @s [{"text":"\n [HINT]: Most sounds mean something has spawned","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 16 run tellraw @s [{"text":"\n [HINT]: Don't look at the hands","color":"dark_red","bold":false}]
execute if score @s cryptid.random matches 17 run tellraw @s [{"text":"\n [HINT]: Don't skybase","color":"dark_red","bold":false}]

