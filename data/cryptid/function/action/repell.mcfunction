tag @s remove cryptid.totemward
execute store result score @s cryptid.player.random run random value 1..200
execute if score @s cryptid.player.random matches 1..10 run tellraw @s [{"text":"Your totem warded off a ","color":"dark_red"},{"color":"red","selector":"@e[tag=cryptid,sort=nearest,limit=1]"},{"text":"!","color":"dark_red"}]
execute if score @s cryptid.player.random matches 1..10 run execute as @e[tag=cryptid,tag=!cryptid.ignore.totemward.held distance=0..10, sort=nearest, limit=1] at @s run spreadplayers ~ ~ 50 90 false @s
execute if score @s cryptid.player.random matches 1..10 run playsound minecraft:block.respawn_anchor.deplete ambient @a[distance=0..10] ~ ~ ~ 1 0.1
execute if score @s cryptid.player.random matches 1..10 run effect give @s minecraft:blindness 1 2 true
execute if score @s cryptid.player.random matches 1..10 run execute anchored eyes run particle minecraft:crimson_spore ^ ^ ^ 0.4 0.4 0.4 0.001 1000
execute if score @s cryptid.player.random matches 1..10 run tag @s add cryptid.totemward


execute store result score @s[tag=cryptid.totemward] cryptid.player.random run random value 99..102

execute if score @s[tag=cryptid.totemward] cryptid.player.random matches 99 run clear @s minecraft:villager_spawn_egg[custom_model_data=1319] 1
execute if score @s[tag=cryptid.totemward] cryptid.player.random matches 99 run playsound minecraft:item.totem.use ambient @s ~ ~ ~ 1 0.1 0.1
execute if score @s[tag=cryptid.totemward] cryptid.player.random matches 99 run tellraw @s [{"text":"Your totem broke!","color":"dark_red"}]
execute if score @s[tag=cryptid.totemward] cryptid.player.random matches 99 run execute anchored eyes run particle item{item:{id:netherrack}} ^-0.7 ^ ^0.5 0 0 0 0.21 320 force

