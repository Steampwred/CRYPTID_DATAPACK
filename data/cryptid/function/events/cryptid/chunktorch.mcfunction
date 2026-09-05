execute store result score @s cryptid.player.random run random value 1..3
execute if score @s cryptid.player.random matches 1 run tellraw @s {"translate":"cryptid.event.chunktorch.brighten","color":"red"}


summon marker ~ ~620 ~ {Tags:["cryptid","cryptid.chunktorch"]}

spreadplayers ~ ~ 70 80 false @e[type=marker,tag=cryptid.chunktorch, sort=nearest]



execute as @e[type=marker,tag=cryptid.chunktorch, sort=nearest, limit=1] at @s align xyz at @s run fill ~ ~10 ~ ~16 ~-100 ~16 minecraft:redstone_torch replace short_grass




execute as @e[type=marker,tag=cryptid.chunktorch] at @s run playsound minecraft:ambient.basalt_deltas.mood ambient @a[distance=0..40] ~ ~ ~ 1 0.5

kill @e[type=marker, tag=cryptid.chunktorch]