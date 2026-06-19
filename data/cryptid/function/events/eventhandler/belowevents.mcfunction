## 75-90 Safe  
execute if score @s cryptid.event.random matches 80..90 run function cryptid:events/cryptid/staringmen
execute if score @s cryptid.event.random matches 75..79 run function cryptid:events/general/ant

## 50-74 Mild
execute if score @s cryptid.event.random matches 65..74 run function cryptid:events/cryptid/flicker5
execute if score @s cryptid.event.random matches 50..64 run function cryptid:events/cryptid/flicker2

## 11-49 Danger 
execute if score @s cryptid.event.random matches 30..49 run function cryptid:events/cryptid/flicker
execute if score @s cryptid.event.random matches 11..29 run function cryptid:events/cryptid/shy1

## 1-10 Extreme
# (Intentionally left blank as no events in this batch met the 1-3 range requirement)

## Major Overlapping Events (>15 Range)
execute if score @s cryptid.event.random matches 1..25 run function cryptid:events/cryptid/youngheadpeeper
execute if score @s cryptid.event.random matches 26..45 run function cryptid:events/general/spawnheadpeeper
execute if score @s cryptid.event.random matches 41..65 run function cryptid:events/cryptid/whisper1
execute if score @s cryptid.event.random matches 81..90 run function cryptid:events/cryptid/tortured
execute if score @s cryptid.event.random matches 50..90 run function cryptid:events/cryptid/jellyswarm
execute if score @s cryptid.event.random matches 1..30 run function cryptid:events/sky/wyrm
execute if score @s cryptid.event.random matches 31..60 run function cryptid:events/sky/whale
execute if score @s cryptid.event.random matches 61..90 run function cryptid:events/sky/fathead
execute if score @s cryptid.event.random matches 1..30 run function cryptid:events/sky/skygrabber
execute if score @s cryptid.event.random matches 31..60 run function cryptid:events/sky/lowskyroamer
execute if score @s cryptid.event.random matches 61..90 run function cryptid:events/sky/eyewatcher
execute if score @s cryptid.event.random matches 1..30 run function cryptid:events/sky/roamingentity
execute if score @s cryptid.event.random matches 31..60 run function cryptid:events/cryptid/nerve