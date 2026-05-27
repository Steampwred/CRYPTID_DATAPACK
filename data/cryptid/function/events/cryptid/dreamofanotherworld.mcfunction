## run as player

summon armor_stand ~ ~ ~ {Tags:["cryptid.dreamofanotherworld","cryptid","cryptid.timer"],Invisible:1b,Invulnerable:1b,NoGravity:1b,}
execute as @n[tag=cryptid.dreamofanotherworld,distance=..1,type=armor_stand] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdreamworld"}
forceload add ~ ~ ~ ~


scoreboard players operation @s cryptid.player.id = @n[distance=..1,tag=cryptid.dreamofanotherworld,type=armor_stand] cryptid.player.id
scoreboard players set @n[distance=..1,tag=cryptid.dreamofanotherworld,type=armor_stand] cryptid.anitimer 10
