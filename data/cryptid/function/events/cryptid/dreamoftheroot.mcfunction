## run as player
effect give @s darkness 4 1 true

summon armor_stand ~ ~ ~ {Tags:["cryptid.dreamroot","cryptid","cryptid.timer"],Invisible:1b,Invulnerable:1b,NoGravity:1b,}
execute as @n[tag=cryptid.dreamroot,distance=..1,type=armor_stand] at @s run function cryptid:action/general/spawntickmarker {"name":"tickdreamroot"}
forceload add ~ ~ ~ ~


scoreboard players operation @s cryptid.player.id = @n[distance=..1,tag=cryptid.dreamroot,type=armor_stand] cryptid.player.id
scoreboard players set @n[distance=..1,tag=cryptid.dreamroot,type=armor_stand] cryptid.anitimer 10
