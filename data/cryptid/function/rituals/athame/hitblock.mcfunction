execute store result score @s cryptid.player.random run random value 1..3
particle dust_pillar{block_state:{Name:redstone_block}} ~ ~1 ~ 0 0 0 0 50
playsound minecraft:entity.bogged.hurt ambient @a[distance=..15] ~ ~ ~ 0.5 0.2


execute if score @s cryptid.player.random matches 1 run function cryptid:rituals/initial/spawnorifice

