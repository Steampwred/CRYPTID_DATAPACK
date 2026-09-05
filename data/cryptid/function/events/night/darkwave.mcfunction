summon minecraft:vindicator ~ ~-10 ~ {NoAI:1,Invulnerable:1,DeathLootTable:"minecraft:empty", CustomName:'[{"translate":"cryptid.entity.phantom_gaia"}]',Tags:["cryptid","cryptid.darkwave"],PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.scale",base:0.01f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:0.32f}]}


execute positioned ~ ~-10 ~ run effect give @e[type=vindicator, tag=cryptid.darkwave] minecraft:invisibility infinite 1 true


execute positioned ~ ~-10 ~ run scoreboard players set @e[type=vindicator, sort=nearest, tag=cryptid.darkwave,limit=1] cryptid.mob.class 4

playsound minecraft:cryptid.wall.spawn ambient @a[distance=0..220] ~ ~ ~ 12000 0.8
execute store result score @s cryptid.player.random run random value 1..10
stopsound @a

execute if score @s cryptid.player.random matches 1 run tellraw @a[distance=0..90] {"translate":"cryptid.event.darkwave.unknown","color":"dark_red"}
execute if score @s cryptid.player.random matches 2 run tellraw @a[distance=0..90] {"translate":"cryptid.event.darkwave.quiet","color":"dark_red"}
execute if score @s cryptid.player.random matches 3 run tellraw @a[distance=0..90] {"translate":"cryptid.event.darkwave.looms","color":"dark_red"}
execute if score @s cryptid.player.random matches 4 run tellraw @a[distance=0..90] {"translate":"cryptid.event.darkwave.stay_inside","color":"dark_red"}
execute if score @s cryptid.player.random matches 5 run tellraw @a[distance=0..90] {"translate":"cryptid.event.darkwave.torches","color":"dark_red"}
execute if score @s cryptid.player.random matches 6 run tellraw @a[distance=0..90] {"translate":"cryptid.event.darkwave.whispers","color":"dark_red"}
execute if score @s cryptid.player.random matches 7 run tellraw @a[distance=0..90] {"translate":"cryptid.event.darkwave.chill","color":"dark_red"}
execute if score @s cryptid.player.random matches 8 run tellraw @a[distance=0..90] {"translate":"cryptid.event.darkwave.silence","color":"dark_red"}
execute if score @s cryptid.player.random matches 9 run tellraw @a[distance=0..90] {"translate":"cryptid.event.darkwave.approaching","color":"dark_red"}
execute if score @s cryptid.player.random matches 10 run tellraw @a[distance=0..90] {"translate":"cryptid.event.darkwave.fog","color":"dark_red"}

execute as @e[type=vindicator, tag=cryptid.darkwave, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickwave"}