particle end_rod ~ ~ ~ 3 3 3 1 100

summon armor_stand ~ ~30 ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cryptid","ritual.exorcise"]}


particle dust_color_transition{from_color:[0.4,0.4,0.4],to_color:[1.0,1.0,1.0],scale:4} ~ ~.5 ~ 0.8 1 0.8 3 75

execute as @e[tag=ritual.exorcise,type=armor_stand,tag =!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickpurifier"}

## full circle of purififcation take 9 timer
scoreboard players set @n[tag=ritual.exorcise] cryptid.timer 500

playsound item.trident.thunder master @a ~ ~ ~ 1 2