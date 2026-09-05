summon minecraft:vindicator ~ ~-10 ~ {NoAI:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.awakened_gaia"}]',Tags:["cryptid","cryptid.wall","cryptid.timer"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.scale",base:0.01f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}


execute positioned ~ ~-10 ~ run effect give @e[type=vindicator, tag=cryptid.wall] minecraft:invisibility infinite 1 true


execute positioned ~ ~-10 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.wall,limit=1] cryptid.mob.class 9

playsound minecraft:cryptid.wall.spawn ambient @a[distance=0..120] ~ ~ ~ 12000 0.8
execute store result score @s cryptid.player.random run random value 1..10


execute if score @s cryptid.player.random matches 1 run tellraw @a[distance=0..90] {"translate":"cryptid.event.wall.1","color":"dark_red"}
execute if score @s cryptid.player.random matches 2 run tellraw @a[distance=0..90] {"translate":"cryptid.event.wall.2","color":"dark_red"}
execute if score @s cryptid.player.random matches 3 run tellraw @a[distance=0..90] {"translate":"cryptid.event.wall.3","color":"dark_red"}
execute if score @s cryptid.player.random matches 4 run tellraw @a[distance=0..90] {"translate":"cryptid.event.wall.4","color":"dark_red"}
execute if score @s cryptid.player.random matches 5 run tellraw @a[distance=0..90] {"translate":"cryptid.event.wall.5","color":"dark_red"}
execute if score @s cryptid.player.random matches 6 run tellraw @a[distance=0..90] {"translate":"cryptid.event.wall.6","color":"dark_red"}
execute if score @s cryptid.player.random matches 7 run tellraw @a[distance=0..90] {"translate":"cryptid.event.wall.7","color":"dark_red"}
execute if score @s cryptid.player.random matches 8 run tellraw @a[distance=0..90] {"translate":"cryptid.event.wall.8","color":"dark_red"}
execute if score @s cryptid.player.random matches 9 run tellraw @a[distance=0..90] {"translate":"cryptid.event.wall.9","color":"dark_red"}
execute if score @s cryptid.player.random matches 10 run tellraw @a[distance=0..90] {"translate":"cryptid.event.wall.10","color":"dark_red"}

execute as @e[type=vindicator, tag=cryptid.wall, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickwall"}
execute as @e[type=vindicator, tag=cryptid.wall] at @s run scoreboard players set @s cryptid.timer 3000