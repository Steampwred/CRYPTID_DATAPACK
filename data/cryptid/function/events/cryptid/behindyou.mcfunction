summon armor_stand ^ ^-1 ^4 {NoGravity:1, Invisible:1, DeathLootTable:"minecraft:empty", CustomName:'[{"text":"behind"}]',Tags:["cryptid","cryptid.behind","cryptid.lookcount"],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,attributes:[{id:"generic.scale",base:0.5f},{id:"generic.step_height",base:10000f},{id:"generic.knockback_resistance",base:120f}]}


execute positioned ^ ^1 ^-6 run scoreboard players set @e[type=armor_stand, sort=nearest, tag=cryptid.behind,limit=1] cryptid.mob.class 2

execute as @e[type=armor_stand, tag=cryptid.behind, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickbehind"}



playsound minecraft:cryptid.whistle.old ambient @p ~40 ~ ~40 12 0.5

execute store result score .random cryptid.player.random run random value 1..3
execute if score .random cryptid.player.random matches 1 run tellraw @p ["LOOKBEHINDYOU"]
execute if score .random cryptid.player.random matches 2 run tellraw @p ["behind"]
execute if score .random cryptid.player.random matches 3 run tellraw @p ["t u r n   a r o u n d"]



effect give @s minecraft:mining_fatigue 5 5 true