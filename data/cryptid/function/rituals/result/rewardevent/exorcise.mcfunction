particle end_rod ~ ~ ~ 3 3 3 1 1000

summon armor_stand ~ ~30 ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["cryptid","ritual.exorcise"]}

execute as @e[tag=ritual.exorcise,type=armor_stand,tag =!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickpurifier"}

## full circle of purififcation take 9 timer
scoreboard players set @n[tag=ritual.exorcise] cryptid.timer 500
