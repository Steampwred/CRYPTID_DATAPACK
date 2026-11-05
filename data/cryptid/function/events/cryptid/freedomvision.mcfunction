## run as player

summon armor_stand ~ ~ ~ {Tags:["cryptid.freedomvision","cryptid","cryptid.timer"],Invisible:1b,Invulnerable:1b,NoGravity:1b,}
execute as @n[tag=cryptid.freedomvision,distance=..1,type=armor_stand] at @s run function cryptid:action/general/spawntickmarker {"name":"tickfreedomvision"}
forceload add ~ ~ ~ ~
effect give @s night_vision 1 0 true

scoreboard players operation @s cryptid.player.id = @n[distance=..1,tag=cryptid.freedomvision,type=armor_stand] cryptid.player.id