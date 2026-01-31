execute store result score @s cryptid.player.random run random value 1..3
particle dust_pillar{block_state:{Name:redstone_block}} ~ ~1 ~ 0 0 0 0 50
playsound minecraft:entity.bogged.hurt ambient @a[distance=..15] ~ ~ ~ 0.5 0.2


execute if score @s cryptid.player.random matches 1 unless entity @e[tag=cryptid.orifice,distance=..12] run function cryptid:rituals/initial/spawnorifice
execute if score @s cryptid.player.random matches 1 if entity @e[tag=cryptid.orifice,distance=..12,scores={cryptid.timer=0}] run tp @n[tag=cryptid.orifice] ~ ~5.01 ~
