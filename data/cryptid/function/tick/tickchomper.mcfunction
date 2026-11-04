execute as @s store result score @s cryptid.player.random run random value 1..200


##tag to model

execute if entity @s[tag=idle] run item replace entity @s armor.head with potion[custom_model_data=1364]
execute if entity @s[tag=angry] run item replace entity @s armor.head with potion[custom_model_data=1363]
execute if entity @s[tag=chasing] run item replace entity @s armor.head with potion[custom_model_data=1362]





##state machine

execute if entity @p[distance=0..35] if score @s cryptid.player.random matches 1..80 run scoreboard players remove @s cryptid.chomptime 1
execute if entity @p[distance=35..] if score @s cryptid.player.random matches 1..80 run scoreboard players add @s[tag=idle] cryptid.chomptime 1


##reset states

execute if entity @p[distance=30..] if score @s cryptid.player.random matches 1 run scoreboard players add @s[tag=!chasing] cryptid.chomptime 1



##reset
tag @s remove idle
tag @s remove angry
tag @s remove chasing


##safeguards

execute if score @s cryptid.chomptime matches 100.. run scoreboard players set @s cryptid.chomptime 100
execute if score @s cryptid.chomptime matches ..1 run scoreboard players set @s cryptid.chomptime 1

##AI
execute if score @s cryptid.chomptime matches 40..100 run tag @s add idle
execute if score @s cryptid.chomptime matches 25..40 run tag @s add angry
execute if score @s cryptid.chomptime matches 1..25 run tag @s add chasing

########################different ais

##idle
execute if entity @s[tag=idle, scores={cryptid.chomptime=95..}] run tp @s ~ ~ ~ facing entity @p eyes
execute if entity @s[tag=idle, scores={cryptid.chomptime=95..}] run execute rotated as @s at @s run tp @s ~ ~ ~ ~180 ~

##slowly rotate hehehhaw
execute if entity @s[tag=idle, scores={cryptid.chomptime=..95}] run execute rotated as @s at @s run execute at @s anchored eyes facing entity @p eyes positioned ^ ^ ^0.2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~





##angry
execute if entity @s[tag=angry] run scoreboard players remove @s cryptid.chomptime 1
execute if entity @s[tag=angry] run damage @s 0 player_attack by @p
execute if entity @s[tag=angry] run tp @s ~ ~ ~ facing entity @p
execute if entity @s[tag=angry] run playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 2 2
execute if entity @s[tag=angry] run tag @a[distance=0..15] add cryptid.glitchscreen


##chasing
execute if entity @s[tag=chasing] if score .chomper cryptid.globalevent matches 16 run function cryptid:action/chomper/bite
execute if entity @s[tag=chasing] if score .chomper cryptid.globalevent matches 34 run function cryptid:action/chomper/bite
execute if entity @s[tag=chasing] if entity @p[distance=40..] if score @s cryptid.player.random matches 1..3 run scoreboard players set @s cryptid.chomptime 100
execute if entity @s[tag=chasing] if score @s cryptid.player.random matches 1..20 run damage @s 0 minecraft:player_attack by @p[distance=0..40]

##water
execute if block ~ ~ ~ water run tp @s ^ ^ ^0.2 facing entity @p

##weakness

execute as @s store result score @s cryptid.player.random run random value 1..20000
execute if entity @p[distance=70..] if score @s cryptid.player.random matches 10 run function cryptid:events/quietkill
execute if block ~ ~ ~ fire run function cryptid:events/quietkill





