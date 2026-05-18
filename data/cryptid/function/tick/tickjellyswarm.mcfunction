execute as @s[tag=!init] run function cryptid:action/jellyswarm/init

execute positioned as @s at @s run tp @s ~ ~0.05 ~


execute store result score @s cryptid.player.random run random value 1..2000


execute if score @s[tag=!nomouth] cryptid.player.random matches 22 run playsound minecraft:cryptid.temple.attack ambient @a[distance=0..80] ~ ~100 ~ 10 0.1
execute if score @s[tag=!nomouth] cryptid.player.random matches 22 run execute as @a[distance=0..40, sort=nearest, limit=1] at @s run function cryptid:events/general/spawnmouth
execute if score @s[tag=!nomouth] cryptid.player.random matches 22 run kill @s


