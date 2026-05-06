
scoreboard players remove @s cryptid.range 1

execute if score @s cryptid.range matches ..1 run kill @s 
execute if entity @a[distance=..2] run scoreboard players set @s cryptid.range 1

#particle minecraft:dust_color_transition{from_color:[0.8,0.24,0.3],to_color:[0.46,0.06,0.02],scale:1} ^0.3 ^0.1 ^ 0 0 0 0.1 1
particle block{block_state:{Name:nether_wart_block}} ~ ~ ~ 0 0 0 0 1

execute if score @s cryptid.range matches 1.. positioned ^ ^ ^0.8 run function cryptid:rituals/athame/raycast




#execute at @s if score .raycastLimit raycast matches 1.. positioned ^ ^ ^0.1 run function cryptid:rituals/athame/raycast
#execute at @s anchored eyes positioned ^ ^ ^.1 run function cryptid:rituals/athame/raycast


