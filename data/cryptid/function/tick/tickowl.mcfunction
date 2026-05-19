
##init
execute as @s[tag=!owl.init] at @s run tp @s ~ ~30 ~
execute as @s[tag=!owl.init] at @s run playsound minecraft:cryptid.owl.spawn ambient @a ~ ~ ~ 3 0.8
execute as @s[tag=!owl.init] run tag @s add owl.init


##random noise
execute store result score @s cryptid.player.random run random value 1..3000
execute if score @s cryptid.player.random matches 3..100 run playsound minecraft:entity.breeze.idle_ground ambient @a[distance=0..70] ~ ~ ~ 2 0.1
execute if score @s cryptid.player.random matches 100..200 run playsound minecraft:cryptid.ambient.mimic ambient @a[distance=0..70] ~ ~ ~ 2 0.2







##AGRO MODE

execute if entity @p[distance=0..20] if score @s cryptid.player.random matches 1..30 run tag @s add agro
execute if entity @p[distance=0..20] if score @s cryptid.player.random matches 1..30 run playsound minecraft:cryptid.deep.vibrate ambient @a


execute as @s[tag=agro] at @s run execute at @s anchored eyes facing entity @p[sort=random, limit=1,distance=1..] eyes positioned ^ ^ ^1.5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.3 ~ ~




##killing
execute store result score @s cryptid.player.random run random value 1..30000
execute if entity @p[distance=120..] run function cryptid:events/quietkill
execute if entity @p[distance=30..] if score @s cryptid.player.random matches 1..10 run function cryptid:events/quietkill


##wandering mode

execute at @s positioned ~ ~ ~ run execute if score @s cryptid.player.random matches 1..10000 run execute at @s anchored eyes facing entity @e[sort=random, limit=1,distance=1..] eyes positioned ^ ^ ^1.5 rotated as @s positioned ^ ^ ^45 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ ~

tp @s ^ ^ ^0.2


##aboveground

execute unless block ~ ~ ~ air run function cryptid:events/general/spawnmouth
execute unless block ~ ~ ~ air run kill @s

execute unless block ~ ~-10 ~ air run tp @s[tag=!agro] ~ ~0.2 ~
execute unless block ^ ^-10 ^10 air run tp @s[tag=!agro] ~ ~0.2 ~




##fill
execute if entity @p[distance=0..20] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:nether_wart_block replace #cryptid:replaceable/base_all


##onactivation

execute if entity @p[distance=..3] run function cryptid:events/general/ant

execute if entity @p[distance=..3] run playsound minecraft:cryptid.ambient ambient @a[distance=0..20] ~ ~ ~ 5 0.5
execute if entity @p[distance=..3] run particle cloud ~ ~ ~ 2.5 2.5 2.5 0.1 1500

execute if entity @p[distance=..3] run damage @p 8 cryptid:cryptid by @s

execute if entity @p[distance=..3] run tag @p add cryptid.fakescreen

execute if entity @p[distance=..3] run function cryptid:events/quietkill

