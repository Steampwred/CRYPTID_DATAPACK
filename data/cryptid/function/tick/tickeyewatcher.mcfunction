
execute store result score @s cryptid.player.random run random value 1..3000

execute if entity @p[distance=0..50] run execute store result score @s cryptid.player.random run random value 1..1000


execute if score @s cryptid.player.random matches 21..40 run playsound minecraft:entity.ghast.ambient ambient @a[distance=0..50] ~ ~ ~ 10 0.1


execute if score @s cryptid.player.random matches 3..20 run playsound minecraft:entity.breeze.idle_ground ambient @a[distance=0..60] ~ ~ ~ 1 0.1


execute store result score @s cryptid.player.random run random value 1..30000




execute if entity @p[distance=220..] run function cryptid:events/quietkill
execute if score @s cryptid.player.random matches 1..10 run function cryptid:events/quietkill


##ai


scoreboard players set @s cryptid.range 92


##wandering mode


tag @s remove cryptid.eyeseen
execute at @p if entity @p[y=60,dy=400] at @s facing entity @p eyes run function cryptid:tick/tickeyeraycast

execute at @p if entity @p[y=60,dy=400] at @s if entity @p[distance=0..12] run tag @s add cryptid.eyeseen


execute at @p if entity @p[y=60,dy=400] if score @s[tag=!cryptid.eyeseen] cryptid.player.random matches 1..1000 run execute at @s anchored eyes facing entity @p[sort=random, limit=1,distance=1..] eyes positioned ^ ^ ^1.5 rotated as @s positioned ^ ^ ^45 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ ~


execute as @s[tag=!cryptid.eyeseen] at @s run tp @s ^ ^ ^0.1
execute as @s[tag=!cryptid.eyeseen] at @s run tp @s[y=60, dy=-1000] ^ ^1 ^0.1



#tracking mode
execute as @s[tag=cryptid.eyeseen] if score @s cryptid.player.random matches 1..600 run title @p title ["",{"text":"I SeE yOU","color":"dark_red"}]
execute as @s[tag=cryptid.eyeseen] if score @s cryptid.player.random matches 600..1200 run title @p title ["",{"text":"I SEE  YOu ","color":"red","italic": true}]
 execute as @s[tag=cryptid.eyeseen] if score @s cryptid.player.random matches 1200..1800 run title @p title ["",{"text":"i sEE YOU","color":"dark_red","bold": true}]
execute as @s[tag=cryptid.eyeseen] if score @s cryptid.player.random matches 1800..2400 run title @p title ["",{"text":"I See  yoU ","color":"red","italic": true}]
 

execute at @p if entity @p[y=60,dy=400] as @s[tag=cryptid.eyeseen] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^1.5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.25 ~ ~



execute if score @s cryptid.player.random matches 1..2400 if entity @s[tag=cryptid.eyeseen] at @p if entity @p[y=80,dy=1400] run execute as @e[tag=cryptid.eyewatcher, type=armor_stand, limit=1, sort=nearest] at @s run playsound minecraft:cryptid.whale.spawn ambient @a[distance=0..100] ~ ~ ~ 10 0.7














##fill

execute if entity @p[distance=0..20] run fill ~8 ~12 ~8 ~-8 ~-1 ~-8 minecraft:nether_wart_block replace #cryptid:replaceable/base_all




execute if entity @p[distance=0..20] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:weeping_vines replace #cryptid:replaceable/base_all
execute if entity @p[distance=0..20] run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:weeping_vines_plant replace #cryptid:fleshy




##onactivation

execute if entity @p[distance=..5] run execute at @p run summon zombie ~-2 ~3 ~ {Tags:["cryptid", "cryptid.digger"], Silent:1, ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1303},count:1}],ArmorDropChances:[0f,0f,0f,0f],active_effects:[{id:invisibility,duration:-1,show_particles:false}]}



execute if entity @p[distance=..2] run playsound minecraft:cryptid.ambient ambient @a[distance=0..20] ~ ~ ~ 5 0.5
execute if entity @p[distance=..2] run particle cloud ~ ~ ~ 2.5 2.5 2.5 0.1 1500
execute if entity @p[distance=..2] run playsound minecraft:cryptid.jelly.capture ambient @a[distance=0..30]


execute if entity @p[distance=..5] run damage @p 2 minecraft:indirect_magic by @s

execute if entity @p[distance=..2] run execute as @p at @s run function cryptid:action/death/highdeath1

execute if entity @p[distance=..2] run summon tnt

execute if entity @p[distance=..2] run function cryptid:events/quietkill

