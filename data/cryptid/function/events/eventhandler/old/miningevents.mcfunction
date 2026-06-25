execute if score @s cryptid.event.random matches 101..102 run function cryptid:events/underground/artery
execute if score @s cryptid.event.random matches 102..104 run function cryptid:events/underground/quake1
execute if score @s cryptid.event.random matches 104..110 run function cryptid:events/underground/quake2
execute if score @s cryptid.event.random matches 110..112 run function cryptid:events/underground/threat1
execute if score @s cryptid.event.random matches 112..140 run function cryptid:events/underground/swapper
execute if score @s cryptid.event.random matches 120..140 run function cryptid:events/underground/spawnscreamer
execute if score @s cryptid.event.random matches 140..170 run function cryptid:events/general/sprayevent
execute if score @s cryptid.event.random matches 100..120 run function cryptid:events/underground/spawnmolder
execute if score @s cryptid.event.random matches 100..115 run function cryptid:events/general/breakerant
execute if score @s cryptid.event.random matches 60..65 run function cryptid:events/cryptid/whisper1




##late game mining events happen at higher fury levels
execute if score .global cryptid.world.fury matches 12.. if score @s cryptid.event.random matches 6 run function cryptid:events/underground/tunnel

execute if score .global cryptid.world.fury matches 75.. if score @s cryptid.event.random matches 1..15 run function cryptid:events/underground/darkeyes

execute if score .global cryptid.world.fury matches 85.. if score @s cryptid.event.random matches 101..109 run function cryptid:events/underground/spawncrawler


##low harmony mining events
execute if score .global cryptid.world.fury matches 30.. run execute if entity @s[scores={cryptid.player.harmony=..-5000}] if score @s cryptid.event.random matches 3..6 run function cryptid:events/underground/spawnspider

execute if score .global cryptid.world.fury matches 30.. run execute if entity @s[scores={cryptid.player.harmony=..-5000}] if score @s cryptid.event.random matches 1..3 run function cryptid:events/underground/spawnhand

execute if score .global cryptid.world.fury matches 30.. run execute if entity @s[scores={cryptid.player.harmony=..-10000}] if score @s cryptid.event.random matches 20..53 run function cryptid:events/story/storywall
