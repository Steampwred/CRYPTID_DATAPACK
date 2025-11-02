playsound minecraft:cryptid.radar.ping ambient @s






#generic
execute positioned ~ ~0.6 ~ facing entity @e[tag=cryptid, tag=!cryptid.vorheart, sort=nearest, limit=10, distance=0..50] feet unless score @s cryptid.mob.class matches 0..1000 positioned ^ ^ ^1.5 run particle dust_color_transition{from_color:[0.941,0.306,0.180],scale:0.8,to_color:[0.549,0.008,0.267],scale:0.6} ~ ~1 ~ 0 0 0 1 5

#class 2-3
execute positioned ~ ~0.6 ~ facing entity @e[tag=cryptid, tag=!cryptid.vorheart, sort=nearest, scores={cryptid.mob.class=1..3}, limit=10, distance=0..240] feet positioned ^ ^ ^1.45 run particle dust_color_transition{from_color:[0.369,0.000,0.000],scale:0.92,to_color:[0.231,0.000,0.090],scale:0.9} ~ ~1 ~ 0 0 0 1 8

#class 4-5
execute positioned ~ ~0.6 ~ facing entity @e[tag=cryptid, tag=!cryptid.vorheart, sort=nearest, scores={cryptid.mob.class=4..5}, limit=10, distance=0..240] feet positioned ^ ^ ^1.4 run particle dust_color_transition{from_color:[0.271,0.000,0.063],scale:1.3,to_color:[0.176,0.008,0.188],scale:1.1} ~ ~1 ~ 0 0 0 1 8

#class 6+
execute positioned ~ ~0.6 ~ facing entity @e[tag=cryptid, tag=!cryptid.vorheart, sort=nearest, scores={cryptid.mob.class=6..1000}, limit=10, distance=0..240] feet positioned ^ ^ ^1.35 run particle dust_color_transition{from_color:[0.000,0.000,0.000],scale:0.92,to_color:[0.510,0.000,0.510],scale:1.3} ~ ~1 ~ 0 0 0 1 8

#hearts
execute positioned ~ ~0.6 ~ facing entity @e[tag=cryptid, tag=cryptid.vorheart, sort=nearest, limit=10, distance=0..150] feet positioned ^ ^ ^1.3 run particle sculk_charge_pop ~ ~0.8 ~ 0 0 0 0 1

#sky
#execute positioned ~ ~0.6 ~ facing entity @e[tag=cryptid, tag=!cryptid.vorheart, sort=nearest, limit=10, distance=0..150, y=100, dy=1000] feet positioned ^ ^ ^1.3 run particle crit ~ ~0.8 ~ 0 0 0 0 1
