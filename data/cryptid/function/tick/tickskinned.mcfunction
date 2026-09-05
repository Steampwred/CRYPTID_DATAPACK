


execute as @s at @s store result score @s cryptid.mob.movx run data get entity @s Motion[0] 100
execute as @s at @s store result score @s cryptid.mob.movy run data get entity @s Motion[1] 100
execute as @s at @s store result score @s cryptid.mob.movz run data get entity @s Motion[2] 100



execute unless entity @s[scores={cryptid.mob.movx=0,cryptid.mob.movz=0}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1304]
execute if entity @s[scores={cryptid.mob.movx=0,cryptid.mob.movz=0}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1305]

execute as @e[type=boat, distance=0..3] at @s run particle block{block_state:{Name:oak_door}} ~ ~1 ~ 0.1 0.1 0.1 0 100
execute as @e[type=boat, distance=0..3] at @s run function cryptid:events/quietkill

execute as @e[type=minecart, distance=0..3] at @s run particle block{block_state:{Name:oak_door}} ~ ~1 ~ 0.1 0.1 0.1 0 100
execute as @e[type=minecart, distance=0..3] at @s run function cryptid:events/quietkill



execute at @s[tag=!cryptid.sleepskinned] if score .skinnedtime cryptid.globalevent matches 1 run function cryptid:events/cryptid/digskinned



execute at @s[tag=diggingskinned] run particle block{block_state:{Name:dirt}} ~ ~1 ~ 0.1 0.1 0.1 0 200
execute at @s[tag=diggingskinned] run tp @s ~ ~-0.05 ~
execute at @s[tag=diggingskinned] run setblock ~ ~ ~ air


execute at @s[tag=diggingskinned] if score .heartbeat cryptid.globalevent matches 1 run spreadplayers ~ ~ 30 50 false @s
execute at @s[tag=diggingskinned] if score .heartbeat cryptid.globalevent matches 1 run tag @s remove diggingskinned


execute at @s if score .globalspawn cryptid.globalevent matches 1 run damage @s 5 minecraft:arrow by @p



##digground

execute at @a[distance=0..1.5] unless block ~ ~-2 ~ air run tp @s ^ ^ ^0.1 facing entity @p
execute at @a[distance=0..1.5] unless block ~ ~-2 ~ air run item replace entity @s armor.head with potion[minecraft:custom_model_data=1304]

execute if block ~ ~ ~ water run spreadplayers ~ ~ 10 50 false @s


#execute as @a[distance=0..1.5] at @s run particle block{block_state:{Name:dirt}} ~ ~1 ~ 0.1 0.1 0.1 0 200
#execute as @a[distance=0..1.5] at @s run playsound minecraft:block.grass.hit ambient @a[distance=0..10] ~ ~ ~ 1 0.1

execute as @s store result score @s cryptid.player.random run random value 1..100
##player effects
execute as @p[distance=0..2] at @s run tag @p add cryptid.glitchscreen
execute if entity @p[distance=0..2] run effect give @p minecraft:slowness 1 0 true
execute if entity @e[tag=cryptid.skinned,distance=1..2] if entity @p[distance=0..2] run effect give @p minecraft:slowness 1 1 true
execute if entity @p[distance=0..2] if score @s cryptid.player.random matches 1 run execute as @e[distance=5..30,type=!player] run damage @s 0 minecraft:player_attack by @p
execute if entity @p[distance=0..1] run particle block{block_state:{Name:red_concrete}} ~ ~1 ~ 0.2 0.2 0.2 10 52
execute if entity @p[distance=0..2] if score @s cryptid.player.random matches 1..10 run playsound minecraft:entity.ravager.attack ambient @a[distance=0..10] ~ ~ ~ 1 0.2
execute if entity @p[distance=0..2] if score @s cryptid.player.random matches 1..10 run item replace entity @s armor.head with potion[minecraft:custom_model_data=1304]





execute as @s store result score @s cryptid.player.random run random value 1..80

execute if score @s cryptid.player.random matches 1 run playsound minecraft:cryptid.skinned.ambient ambient @a[distance=0..10] ~ ~ ~


execute as @s store result score @s cryptid.player.random run random value 1..10000
execute if entity @a[distance=30..] run execute if score @s cryptid.player.random matches 1..3 run tag @s add cryptid.sleepskinned
execute if entity @a[distance=30..] run execute if score @s cryptid.player.random matches 1..3 run tp @s ~ ~-4.5 ~
execute if entity @a[distance=30..] run execute if score @s cryptid.player.random matches 1..3 run effect give @s resistance infinite 100 true
execute if entity @a[distance=30..] run execute if score @s cryptid.player.random matches 1..3 run effect give @s slowness infinite 100 true

##ticksleeping
execute as @s[tag=cryptid.sleepskinned] run function cryptid:action/skinned/sleepskinned

execute at @s[tag=!cryptid.diggingskinned, tag=!cryptid.sleepskinned] unless block ~ ~ ~ #cryptid:nonsolid run tp @s ~ ~0.1 ~
execute at @s[tag=!cryptid.diggingskinned, tag=!cryptid.sleepskinned] unless block ~ ~ ~ #cryptid:nonsolid run playsound minecraft:block.grass.hit ambient @a[distance=0..10] ~ ~ ~ 1 0.1
execute at @s[tag=!cryptid.diggingskinned, tag=!cryptid.sleepskinned] unless block ~ ~ ~ #cryptid:nonsolid run particle block{block_state:{Name:dirt}} ~ ~1 ~ 0.1 0.1 0.1 0 200


