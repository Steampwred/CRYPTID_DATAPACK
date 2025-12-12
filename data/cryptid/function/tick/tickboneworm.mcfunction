execute store result score @s cryptid.player.random run random value 1..50000



execute if score @s cryptid.player.random matches 1..20 run function cryptid:events/quietkill
execute unless block ~ ~-1 ~ air run execute if score @s cryptid.player.random matches 3..8 run function cryptid:events/general/spawntree
execute unless block ~ ~-1 ~ air run execute if score @s cryptid.player.random matches 9 run function cryptid:events/general/spawnrelic


execute unless block ~ ~-1 ~ air run setblock ~ ~-1 ~ minecraft:netherrack


particle block{block_state:{Name:nether_wart_block}} ~ ~0.2 ~ 0 0 0 0 1

#fill ~3 ~3 ~3 ~-3 ~-3 ~-3 nether_wart_block replace #logs

#fill ~3 ~3 ~3 ~-3 ~-3 ~-3 red_terracotta replace #base_stone_overworld

place feature cryptid:convertfleshsmall
execute positioned ~ ~5 ~ run place feature cryptid:convertfleshsmall

execute as @e[type=item,distance=0..4] run setblock ~ ~-1 ~ nether_wart_block
execute as @e[type=item,distance=0..4] run function cryptid:events/quietkill

damage @s 0 minecraft:player_attack by @p