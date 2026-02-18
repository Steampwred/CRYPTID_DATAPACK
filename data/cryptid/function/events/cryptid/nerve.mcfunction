execute store result score @s cryptid.player.random run random value 1..3
execute if score @s cryptid.player.random matches 1 run tellraw @s {"text":"Look up :)","color":"red"}

execute as @e[tag=cryptid.nerve, type=vindicator] at @s run tp @s ~ -1000 ~
execute as @e[tag=cryptid.nerve, type=vindicator] at @s run kill @s
summon vindicator ~ ~120 ~ {NoGravity:1b,Invincible:1,NoAI:1,DeathLootTable:"minecraft:empty",NoGravity:1, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"Prion Cluster"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.nerve"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1354},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute positioned ~ ~220 ~ run effect give @e[type=vindicator, sort=nearest, tag=cryptid.nerve] minecraft:invisibility infinite 1 true

execute positioned ~ ~220 ~ run attribute @e[type=vindicator, sort=nearest, tag=cryptid.nerve,limit=1] minecraft:generic.scale base set 60

execute positioned ~ ~220 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.nerve,limit=1] cryptid.mob.class 3

execute as @e[type=vindicator, tag=cryptid.nerve, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"ticknerve"}



execute positioned ~ ~220 ~ run team join cryptid.nocollide @e[type=vindicator, sort=nearest, limit=1, tag=cryptid.nerve]

function cryptid:events/cryptid/flicker4