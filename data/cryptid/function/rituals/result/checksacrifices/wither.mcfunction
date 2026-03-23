execute unless entity @e[limit=1, distance=..11,type=wither] run return fail
particle crimson_spore ~ ~ ~ 0 0 0 1 200
playsound minecraft:cryptid.ambient.hand ambient @a ~ ~ ~ 1 1
tellraw @a {"text":"WITHER","color":"red"}