execute if score @s cryptid.timer matches 0..50 run tp @s ~ ~0.3 ~


execute if score @s cryptid.timer matches 31..100 as @e[distance=4..40,tag=!cryptid] at @s run function cryptid:action/kraken/dragdeep
execute if score @s cryptid.timer matches ..30 as @e[distance=1..40,tag=!cryptid] at @s run function cryptid:action/kraken/dragdeep2

execute if score @s cryptid.timer matches -90 run playsound minecraft:cryptid.jumpchase ambient @a[distance=..20] ~ ~ ~ 3 1.4
execute if score @s cryptid.timer matches -200 run playsound minecraft:cryptid.jumpchase ambient @a[distance=..20] ~ ~ ~ 3 1.4