scoreboard players remove @s cryptid.timer 1




##one minute death
execute if score @s cryptid.timer matches -1200 run kill @s[tag=!killignore]







###specialized ticks

execute if entity @s[tag=boss.explosion] at @s run function cryptid:boss/tick/tickexplosion
execute if entity @s[tag=boss.skull] at @s run function cryptid:boss/tick/tickskull
execute if entity @s[tag=boss.pillar] at @s run function cryptid:boss/tick/tickpillar
execute if entity @s[tag=display.pillar] at @s run function cryptid:boss/tick/tickpillardisplay
execute if entity @s[tag=boss.sword] at @s run function cryptid:boss/tick/ticksword
execute if entity @s[tag=boss.ring] at @s run function cryptid:boss/tick/tickring
execute if entity @s[tag=boss.core1] at @s run function cryptid:boss/tick/tickcore1
execute if entity @s[tag=boss.core2] run function cryptid:boss/tick/tickboss
execute if entity @s[tag=boss.pillar] at @s run function cryptid:boss/tick/tickpillar
execute if entity @s[tag=boss.orb] at @s run function cryptid:boss/tick/tickorb
execute if entity @s[tag=boss.handline] at @s run function cryptid:boss/tick/tickhandline
execute if entity @s[tag=boss.hand] at @s run function cryptid:boss/tick/tickhand
execute if entity @s[tag=boss.superskull] at @s run function cryptid:boss/tick/ticksuperskull




##clear drops

execute as @s[tag=!bossinit] at @s run function cryptid:boss/action/general/bossinit