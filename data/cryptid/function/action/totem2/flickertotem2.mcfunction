
execute store result score @s cryptid.player.random run random value 1..75


execute if score @s cryptid.player.random matches 1..3 run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 netherrack replace cobblestone

execute if score @s cryptid.player.random matches 3..7 run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 red_terracotta replace #minecraft:base_stone_overworld
##randomness


execute if score @s cryptid.player.random matches 5 run function cryptid:events/cryptid/flicker1
execute if score @s cryptid.player.random matches 6 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.player.random matches 7..10 run function cryptid:events/cryptid/flicker3
execute if score @s cryptid.player.random matches 8..10 run function cryptid:events/cryptid/flicker4
execute if score @s cryptid.player.random matches 11 run function cryptid:events/night/lostsoul

playsound minecraft:cryptid.cloud.ambience ambient @a[distance=0..30] ~ ~ ~

playsound minecraft:cryptid.torch.flicker ambient @a