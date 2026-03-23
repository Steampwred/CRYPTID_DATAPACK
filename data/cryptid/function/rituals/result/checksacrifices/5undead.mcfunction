execute unless entity @e[limit=5, distance=..11,type=zombie] run return fail
particle crimson_spore ~ ~ ~ 0 0 0 1 200
playsound minecraft:cryptid.ambient.hand ambient @a ~ ~ ~ 1 1
tellraw @a {"text":"FIVE UNDEAD","color":"red"}