execute store result score @s cryptid.player.random run random value 1..40000



execute if score @s cryptid.player.random matches 1..20 run function cryptid:action/general/explodedeath
execute unless block ~ ~-1 ~ air run execute if score @s cryptid.player.random matches 1..8 run function cryptid:events/general/spawntree
execute unless block ~ ~-1 ~ air run execute if score @s cryptid.player.random matches 9 run function cryptid:events/general/spawnrelic

#infest single mob
execute if score @s cryptid.player.random matches 1..500 as @e[type=!player, type=!#cryptid:projectiles, type=!item, type=!villager, type=!armor_stand, tag=!cryptid, type=!marker, distance=..5,type=!experience_orb] run function cryptid:action/general/infestsingle

##Absorb items on the ground
execute as @e[type=item,distance=0..4] run function cryptid:events/quietkill

execute unless block ~ ~-1 ~ air run setblock ~ ~-1 ~ minecraft:netherrack

particle block{block_state:{Name:nether_wart_block}} ~ ~0.2 ~ 0 0 0 0 2

place feature cryptid:convertfleshsmall
execute positioned ~ ~5 ~ run place feature cryptid:convertfleshsmall

damage @s 0 minecraft:player_attack by @p