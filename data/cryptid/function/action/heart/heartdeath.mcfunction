execute if score .global cryptid.day matches 1..3 run scoreboard players add .global cryptid.world.fury 1
execute if score .global cryptid.day matches 3..10 run scoreboard players add .global cryptid.world.fury 5
execute if score .global cryptid.day matches 10.. run scoreboard players add .global cryptid.world.fury 10

particle block_marker{block_state:{Name:red_concrete}} ^ ^1 ^1.5 0.8 0.8 0.8 0 20
playsound minecraft:cryptid.mob.death ambient @a[distance=..20] ~ ~ ~ 1.5 0.8

fill ~-4 ~-4 ~-4 ~4 ~4 ~4 red_concrete_powder replace nether_wart_block

execute if score @s cryptid.player.harmony matches ..0 run scoreboard players set @s cryptid.player.harmony 0
advancement revoke @s only cryptid:playerkillheart
