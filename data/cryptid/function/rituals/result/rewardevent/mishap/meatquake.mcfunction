place feature cryptid:convertflesh ~ ~-4 ~

summon minecraft:armor_stand ~ ~-6.1 ~ {Invisible:1b, Tags:["cryptid","cryptid.quake.surface"],DisabledSlots:4144959}

playsound minecraft:cryptid.earth.ambient ambient @a[distance=0..30] ~ ~-10 ~ 10 0.2

execute as @e[type=armor_stand, tag=cryptid.quake.surface, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickquakesurface"}

effect give @a[distance=..15] darkness 5 0 true

