## 75-90 Safe  
execute if score @s cryptid.event.random matches 85..90 run function cryptid:events/cryptid/setnight
execute if score @s cryptid.event.random matches 81..84 run function cryptid:events/cryptid/screendash2
execute if score @s cryptid.event.random matches 75..80 run function cryptid:events/sky/lowskyroamer

## 50-74 Mild
execute if score @s cryptid.event.random matches 71..74 run function cryptid:events/cryptid/radiodead
execute if score @s cryptid.event.random matches 62..70 run function cryptid:events/cryptid/mimic
execute if score @s cryptid.event.random matches 50..61 run function cryptid:events/cryptid/chunkred

## 11-49 Danger 
execute if score @s cryptid.event.random matches 38..49 run function cryptid:events/cryptid/flicker3
execute if score @s[y=60, dy=400] cryptid.event.random matches 31..37 run function cryptid:events/cryptid/altar
execute if score @s cryptid.event.random matches 24..30 run function cryptid:events/cryptid/behindyou
execute if score @s cryptid.event.random matches 23 run function cryptid:events/cryptid/youngheadpeeper
execute if score @s cryptid.event.random matches 22 run function cryptid:events/cryptid/pinhead
execute if score @s cryptid.event.random matches 21 run function cryptid:events/cryptid/spire
execute if score @s cryptid.event.random matches 20 run function cryptid:events/general/invisibleguy
execute if score @s cryptid.event.random matches 19 run function cryptid:events/general/breakerant
execute if score @s cryptid.event.random matches 18 run fillbiome ~3 ~3 ~3 ~-3 ~-3 ~-3 cryptid:soma
execute if score @s cryptid.event.random matches 17 run function cryptid:events/cryptid/whisper1
execute if score @s cryptid.event.random matches 16 run function cryptid:events/cryptid/uncanny2
execute if score @s cryptid.event.random matches 15 run function cryptid:events/cryptid/angrystalker
execute if score @s cryptid.event.random matches 14 run function cryptid:events/general/sinkhole
execute if score @s cryptid.event.random matches 13 run function cryptid:events/general/ant
execute if score @s cryptid.event.random matches 12 run function cryptid:events/cryptid/fakemountain
execute if score @s cryptid.event.random matches 11 run function cryptid:events/cryptid/jellyswarm

## 1-10 Extreme
execute if score @s cryptid.event.random matches 10 run function cryptid:events/general/distort1
execute if score @s cryptid.event.random matches 9 run function cryptid:events/cryptid/flooreye
execute if score @s cryptid.event.random matches 8 run function cryptid:events/cryptid/tortured
execute if score @s cryptid.event.random matches 7 run function cryptid:events/general/sprayevent
execute if score @s cryptid.event.random matches 6 run function cryptid:events/cryptid/interactionblock
execute if score @s cryptid.event.random matches 5 run function cryptid:events/cryptid/glitchtool
execute if score @s cryptid.event.random matches 4 run function cryptid:events/general/screencorrupt
execute if score @s cryptid.event.random matches 3 run function cryptid:events/cryptid/jelly1
execute if score @s cryptid.event.random matches 2 run function cryptid:events/cryptid/chunktorch
execute if score @s cryptid.event.random matches 1 run function cryptid:events/cryptid/chunkgrass

## Major Overlapping Events (>15 Range)
execute if score @s cryptid.event.random matches 1..20 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.event.random matches 29..56 run function cryptid:events/cryptid/placestructure
execute if score @s cryptid.event.random matches 30..56 run function cryptid:events/cryptid/shy2