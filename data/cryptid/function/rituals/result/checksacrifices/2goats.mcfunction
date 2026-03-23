execute unless entity @e[limit=2, distance=..11,type=goat] run return fail
particle crimson_spore ~ ~ ~ 0 0 0 1 200
playsound minecraft:cryptid.ambient.hand ambient @a ~ ~ ~ 1 1
tellraw @a {"text":"TWO GOATS","color":"red"}