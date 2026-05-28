execute unless entity @e[type=marker,tag=cryptid.chunktall, sort=nearest, limit=1] run summon marker ~ ~620 ~ {Tags:["cryptid","cryptid.chunktall"]}

spreadplayers ~ ~ 10 70 false @e[type=marker,tag=cryptid.chunktall, sort=nearest]
execute as @e[type=marker,tag=cryptid.chunktall, sort=nearest, limit=1] run scoreboard players add @s cryptid.spawnattempts 1

## attempts
execute as @e[type=marker,tag=cryptid.chunktall, sort=nearest, limit=1, scores={cryptid.spawnattempts=..10}] at @s if entity @n[tag=cryptid.totem2,distance=..160] run return run function cryptid:events/cryptid/chunktall
execute as @e[type=marker,tag=cryptid.chunktall, sort=nearest, limit=1, scores={cryptid.spawnattempts=..10}] at @s if entity @n[tag=cryptid.lessertotem,distance=..80] run return run function cryptid:events/cryptid/chunktall
execute as @e[type=marker,tag=cryptid.chunktall, sort=nearest, limit=1, scores={cryptid.spawnattempts=10..}] run kill @s



## On Succesful place
execute store result score @s cryptid.player.random run random value 1..4

execute if score @s cryptid.player.random matches 1 run execute as @e[type=marker,tag=cryptid.chunktall, sort=nearest, limit=1] at @s align xyz at @s run clone ~-6 ~-15 ~ ~6 ~ ~ ~ ~10 ~
execute if score @s cryptid.player.random matches 2 run execute as @e[type=marker,tag=cryptid.chunktall, sort=nearest, limit=1] at @s align xyz at @s run clone ~ ~-15 ~-6 ~ ~ ~6 ~ ~10 ~
execute if score @s cryptid.player.random matches 3 run execute as @e[type=marker,tag=cryptid.chunktall, sort=nearest, limit=1] at @s align xyz at @s run clone ~-8 ~-25 ~ ~8 ~ ~ ~ ~30 ~
execute if score @s cryptid.player.random matches 4 run execute as @e[type=marker,tag=cryptid.chunktall, sort=nearest, limit=1] at @s align xyz at @s run clone ~ ~-25 ~-8 ~ ~ ~8 ~ ~30 ~


execute as @e[type=marker,tag=cryptid.chunktall] at @s run playsound minecraft:ambient.basalt_deltas.mood ambient @a[distance=0..60] ~ ~ ~ 1 0.5

kill @e[type=marker, tag=cryptid.chunktall]