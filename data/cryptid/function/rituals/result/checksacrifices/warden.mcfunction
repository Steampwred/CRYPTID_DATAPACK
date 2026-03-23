execute unless entity @e[limit=1, distance=..11,type=warden] run return fail
particle crimson_spore ~ ~ ~ 0 0 0 1 200
playsound minecraft:cryptid.ambient.hand ambient @a ~ ~ ~ 1 1
tellraw @a {"text":" WARDENS","color":"red"}