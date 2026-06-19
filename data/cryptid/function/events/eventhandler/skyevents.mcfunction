## 75-90 Safe
# (Reserved)

## 50-74 Mild
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 60..74 run function cryptid:events/sky/lowskyroamer

## 11-49 Danger
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 40..49 run function cryptid:events/sky/spiral
execute at @s[y=95,dy=400] if score @s cryptid.event.random matches 30..39 run function cryptid:events/sky/whale
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 25..29 run function cryptid:events/sky/vine
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 20..24 run function cryptid:events/sky/ray
execute at @s[y=95,dy=400] if score @s cryptid.event.random matches 15..19 run function cryptid:events/sky/cloud
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 11..14 run function cryptid:events/sky/skygrabber

## 1-10 Extreme
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 6..10 run function cryptid:events/cryptid/behindyou
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 1..5 run function cryptid:events/sky/fathead

## Major Overlapping Events (>15 Range)
execute if score .global cryptid.world.fury matches 75.. run execute at @s[y=95,dy=400, scores={cryptid.player.harmony=..0}] if score @s cryptid.event.random matches 1..90 run function cryptid:events/sky/eyewatcher
execute if score .global cryptid.world.fury matches 110.. run execute at @s[y=95,dy=400, scores={cryptid.player.harmony=..-10000}] if score @s cryptid.event.random matches 1..90 run function cryptid:events/sky/roamingentity
execute at @s[y=55,dy=400, scores={cryptid.player.harmony=..-10000}] if score @s cryptid.event.random matches 1..90 run function cryptid:events/sky/octopus