summon minecraft:zombie ~ ~1 ~ {CustomName:'[{"text":"Orifice"}]', Silent:1b, NoAI:1b, Tags:["cryptid","cryptid.orifice"]}

item replace entity @e[type=zombie, sort=nearest, tag=cryptid.orifice, limit=1] armor.head with potion[minecraft:custom_model_data=1312]

execute as @e[type=zombie, tag=cryptid.orifice, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickorifice"}

effect give @e[type=minecraft:zombie, tag=cryptid.orifice] minecraft:invisibility infinite 1 true


particle dust_color_transition{from_color:[0.8,0.24,0.3],to_color:[0.46,0.06,0.02],scale:4} ~ ~1.6 ~ 0.5 0.5 0.5 200 25

playsound minecraft:cryptid.mob.death ambient @a[distance=..15] ~ ~1.3 ~ 1 1.2