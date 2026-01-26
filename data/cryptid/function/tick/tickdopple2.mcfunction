
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 crimson_roots replace short_grass

fill ~4 ~4 ~4 ~-4 ~-4 ~-4 redstone_torch replace tall_grass



fill ~-3 ~2 ~-3 ~3 ~-3 ~3 netherrack replace grass_block

fill ~-4 ~ ~-4 ~4 ~-1 ~4 crimson_nylium replace grass_block



fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace #doors
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace #minecraft:dragon_transparent
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace #planks
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace #leaves
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 nether_wart_block replace #logs
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 minecraft:fire_coral_fan[waterlogged=false] replace #flowers
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 nether_wart_block replace dirt
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace glass
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace cobblestone
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 red_concrete_powder replace #minecraft:sand
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 red_terracotta replace sandstone
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 redstone_torch replace torch
execute as @a[distance=0..3] at @s run damage @s 2 minecraft:starve by @s

playsound minecraft:entity.enderman.scream ambient @a[distance=0..12] ~ ~ ~ 1 0.1

effect give @a[distance=0..4] minecraft:blindness 1

effect give @a[distance=0..4] minecraft:slowness 1



particle dust_color_transition{from_color:[0.87,0.45,0.49],to_color:[0.46,0.0,0.11],scale:4} ~ ~1 ~ 1.5 1.5 1.5 1 1 normal


