## 75-90 Safe  
execute if score @s cryptid.event.random matches 85..90 run function cryptid:events/underground/artery
execute if score @s cryptid.event.random matches 75..84 run function cryptid:events/underground/quake1

## 50-74 Mild
execute if score @s cryptid.event.random matches 66..74 run function cryptid:events/underground/quake2
execute if score @s cryptid.event.random matches 60..65 run function cryptid:events/cryptid/whisper1
execute if score @s cryptid.event.random matches 50..59 run function cryptid:events/underground/threat1

## 11-49 Danger 
execute if score .global cryptid.world.fury matches 12.. if score @s cryptid.event.random matches 40..49 run function cryptid:events/underground/tunnel
execute if score .global cryptid.world.fury matches 75.. if score @s cryptid.event.random matches 30..39 run function cryptid:events/underground/darkeyes
execute if score .global cryptid.world.fury matches 30.. run execute if entity @s[scores={cryptid.player.harmony=..-5000}] if score @s cryptid.event.random matches 20..29 run function cryptid:events/underground/spawnspider
execute if score .global cryptid.world.fury matches 30.. run execute if entity @s[scores={cryptid.player.harmony=..-5000}] if score @s cryptid.event.random matches 11..19 run function cryptid:events/underground/spawnhand

## 1-10 Extreme
# (Intentionally left blank for this batch as no events met the strict 1-3 range requirement)

## Major Overlapping Events (>15 Range)
execute if score @s cryptid.event.random matches 1..30 run function cryptid:events/underground/swapper
execute if score @s cryptid.event.random matches 31..60 run function cryptid:events/underground/spawnscreamer
execute if score @s cryptid.event.random matches 61..90 run function cryptid:events/general/sprayevent
execute if score @s cryptid.event.random matches 1..45 run function cryptid:events/underground/spawnmolder
execute if score @s cryptid.event.random matches 46..90 run function cryptid:events/general/breakerant
execute if score .global cryptid.world.fury matches 30.. run execute if entity @s[scores={cryptid.player.harmony=..-10000}] if score @s cryptid.event.random matches 1..90 run function cryptid:events/story/storywall
execute if score .global cryptid.world.fury matches 85.. if score @s cryptid.event.random matches 1..90 run function cryptid:events/underground/spawncrawler