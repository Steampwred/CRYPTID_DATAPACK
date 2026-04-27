## Check conditions
scoreboard players reset @s cryptid.ritual.sacrificecounter
execute as @e[distance=0.5..11,type=wither] run scoreboard players add @n[distance=..11,tag=cryptid.orifice,type=zombie] cryptid.ritual.sacrificecounter 1
execute as @s[scores={cryptid.ritual.sacrificecounter=..1}] run return fail

particle crimson_spore ~ ~ ~ 0 0 0 1 200
playsound minecraft:cryptid.ambient.hand ambient @a ~ ~ ~ 1 1
tellraw @a {"text":"WITHER","color":"red"}
tag @s add ritual.cravingmet
