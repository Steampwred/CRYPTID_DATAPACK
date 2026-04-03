##init

execute if entity @s[tag=!init] run function cryptid:action/totem2/inittoteminit2
execute if entity @s[tag=!init] run tag @s add init




execute store result score @s cryptid.player.random run random value 1..200

execute if score @s cryptid.player.random matches 1..5 run playsound minecraft:block.conduit.ambient ambient @a[distance=0..20] ~ ~ ~ 0.5 0.1


##patrticles


particle falling_dust{block_state:{Name:nether_wart,Properties:{age:"3"}}} ~ ~1 ~ 5 5 5 0.01 7


##kill entities

execute if entity @e[tag=cryptid, distance=0..30] run function cryptid:action/totem2/flickertotem2
execute as @e[tag=cryptid, distance=0..30] at @s run function cryptid:events/quietkill


##block check

execute if block ~ ~-1 ~ air run kill @s
execute if block ~ ~-1 ~ air run playsound minecraft:cryptid.axe.hit ambient @a ~ ~ ~ 1 0.1
execute if block ~ ~-1 ~ air run particle explosion
execute if block ~ ~-1 ~ air run loot spawn ~ ~ ~ loot cryptid:rituals/upgrade_totem_loot
