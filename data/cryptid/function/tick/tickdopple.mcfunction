##priming
execute store result score @s cryptid.player.random run random value 1..3000
execute if score @s cryptid.player.random matches 1..100 run tag @s add cryptid.doppleprime

##prevent premature death
execute as @n[tag=cryptid.doppleclone] if entity @p[distance=..5] run data merge entity @s {Invulnerable:0b}
effect give @s[tag=!cryptid.doppleawakened] minecraft:resistance 1 255 true


##start and kill logic
execute at @s if score @s[tag=!cryptid.doppleawakened] cryptid.player.random matches 1..28 if entity @p[distance=0..10] run function cryptid:action/dopplestart



##staritng code if host killed

execute unless entity @e[tag=cryptid.doppleclone, distance=0..5] run scoreboard players remove @s cryptid.timer 1
execute if entity @e[tag=cryptid.doppleclone, distance=0..5] run scoreboard players set @s cryptid.timer 0

execute as @s[tag=!cryptid.doppleawakened, tag=cryptid.doppleprime] at @s if score @s cryptid.timer matches ..-20 run function cryptid:action/dopplestart



##spreadplay
execute positioned as @s if score @s[tag=cryptid.doppleawakened,tag=!lookedat] cryptid.player.random matches 7..40 if entity @p[distance=10..40] positioned as @p run spreadplayers ~ ~ 10 25 false @s
execute positioned as @s if score @s[tag=cryptid.doppleawakened] cryptid.player.random matches 1..800 if entity @p[scores={cryptid.player.damage=1..}] positioned as @p run spreadplayers ~ ~ 10 25 false @s


##if not, kill
execute positioned as @s if score @s[tag=!cryptid.doppleawakened] cryptid.player.random matches 7..11 if entity @p[distance=80..] run function cryptid:action/dopplekill





##tp logic
scoreboard players operation #TEMP cryptid.dopple.id = @s cryptid.dopple.id
tag @s add cryptid.doppleinstance
execute as @e[tag=cryptid.doppleclone, tag=!dead] at @s if score @s cryptid.dopple.id = #TEMP cryptid.dopple.id run function cryptid:tick/doppleinstance
tag @s remove cryptid.doppleinstance





execute if score @s[tag=!cryptid.doppleawakened] cryptid.player.random matches 0..2700 run damage @s 0 minecraft:player_attack by @p
execute if score @s[tag=!cryptid.doppleawakened] cryptid.player.random matches 2700..3000 run damage @s 0 minecraft:player_attack by @e[sort=random, limit=1]

execute if score @s[tag=cryptid.doppleawakened] cryptid.player.random matches 200..3000 if entity @p[distance=..40] run damage @s 0 minecraft:player_attack by @p


##awakened

execute as @s[tag=cryptid.doppleawakened] at @s run function cryptid:tick/tickdopple2

execute as @s[tag=lookedat] at @s anchored eyes facing entity @p eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.25 ~ ~
execute as @s[tag=lookedat] at @s run effect give @s slow_falling 1 1 true


tag @s remove lookedat
