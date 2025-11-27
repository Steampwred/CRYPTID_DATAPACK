execute as @e[distance=..10,type=zombie,tag=cryptid.orifice] at @s run function cryptid:action/ritual/ritualstart
# schedual the function for thematic delay

# Player effects

execute anchored feet positioned ^-0.4 ^ ^0.3 run particle block{block_state:{Name:redstone_block}} ~ ~-0.3 ~ 0 0 0 0 50


playsound minecraft:entity.bogged.hurt ambient @a[distance=..15] ~ ~ ~ 0.5 0.2
damage @p 4 dry_out