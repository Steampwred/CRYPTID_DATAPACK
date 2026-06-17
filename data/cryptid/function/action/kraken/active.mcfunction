execute if score @s cryptid.timer matches 0..50 run tp @s ~ ~0.3 ~


execute if score @s cryptid.timer matches 31..100 as @e[distance=4..40] at @s run function cryptid:action/kraken/dragdeep
execute if score @s cryptid.timer matches ..30 as @e[distance=4..40] at @s run function cryptid:action/kraken/dragdeep2
