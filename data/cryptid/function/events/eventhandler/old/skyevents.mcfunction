##sky events

#regular sky events
execute at @s[y=95,dy=400] if score @s cryptid.event.random matches 11..16 run function cryptid:events/sky/cloud
execute at @s[y=95,dy=400] if score @s cryptid.event.random matches 20..29 run function cryptid:events/sky/whale

execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 10..18 run function cryptid:events/sky/ray
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 24..31 run function cryptid:events/sky/spiral
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 19..25 run function cryptid:events/sky/vine
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 9..17 run function cryptid:events/sky/skygrabber
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 25..32 run function cryptid:events/cryptid/behindyou
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 32..46 run function cryptid:events/sky/lowskyroamer
execute at @s[y=85,dy=400] if score @s cryptid.event.random matches 36..37 run function cryptid:events/sky/fathead



## events that happen at higher fury levels
execute if score .global cryptid.world.fury matches 75.. run execute at @s[y=95,dy=400, scores={cryptid.player.harmony=..0}] if score @s cryptid.event.random matches 6..22 run function cryptid:events/sky/eyewatcher

execute if score .global cryptid.world.fury matches 110.. run execute at @s[y=95,dy=400, scores={cryptid.player.harmony=..-10000}] if score @s cryptid.event.random matches 24..32 run function cryptid:events/sky/roamingentity


##low harmony sky
execute at @s[y=55,dy=400, scores={cryptid.player.harmony=..-10000}] if score @s cryptid.event.random matches 22..35 run function cryptid:events/sky/octopus


