summon minecraft:zombie ~ ~ ~ {CustomName:'[{"text":"Orifice"}]', Silent:1b, NoAI:1b, Tags:["cryptid","cryptid.orifice"], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
effect give @e[type=minecraft:zombie, tag=cryptid.orifice] minecraft:invisibility infinite 1 true

execute positioned ~ ~ ~ run item replace entity @e[type=minecraft:zombie, sort=nearest, tag=cryptid.orifice, limit=1] armor.head with potion[minecraft:custom_model_data=1407]

execute as @e[type=minecraft:zombie, tag=cryptid.orifice, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickorifice"}




particle dust_color_transition{from_color:[0.8,0.24,0.3],to_color:[0.46,0.06,0.02],scale:4} ~ ~1.6 ~ 0.5 0.6 0.5 400 25

playsound minecraft:cryptid.mob.death ambient @a[distance=..15] ~ ~1.3 ~ 1 1.2