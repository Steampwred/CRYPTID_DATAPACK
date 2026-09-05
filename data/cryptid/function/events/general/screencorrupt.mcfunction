tag @s add cryptid.jointimer
execute store result score @s cryptid.player.random run random value 8..20


tellraw @s[scores={cryptid.player.random=8}] ["",{"translate":"cryptid.event.join.thanks","color":"#990033"}]
tellraw @s[scores={cryptid.player.random=9}] ["",{"translate":"cryptid.event.join.good_luck","color":"#990033"}]
tellraw @s[scores={cryptid.player.random=10}] ["",{"translate":"cryptid.event.join.greetings","color":"#990033"}]
tellraw @s[scores={cryptid.player.random=11}] ["",{"translate":"cryptid.event.join.boxes","color":"#990033"}]
tellraw @s[scores={cryptid.player.random=12}] ["",{"translate":"cryptid.event.join.failed_chunk_entity","color":"#990033"}]
tellraw @s[scores={cryptid.player.random=13}] ["",{"translate":"cryptid.event.join.failed_chunk_storage","color":"#990033"}]
tellraw @s[scores={cryptid.player.random=13}] ["",{"translate":"cryptid.event.join.joining_existing","color":"#990033"}]


execute store result score @s cryptid.player.random run random value 1..8


##random image
title @s times 0 27t 0
execute if score @s cryptid.player.random matches 1 run title @s title {"text":"\ua006","font":"minecraft:images"}

execute if score @s cryptid.player.random matches 2 run title @s title {"text":"\ua007","font":"minecraft:images"}

execute if score @s cryptid.player.random matches 3 run title @s title {"text":"\ua008","font":"minecraft:images"}

execute if score @s cryptid.player.random matches 4 run title @s title {"text":"\ua009","font":"minecraft:images"}
 
execute if score @s cryptid.player.random matches 5 run title @s title {"text":"\ua0010","font":"minecraft:images"}

execute if score @s cryptid.player.random matches 6 run title @s title {"text":"\ua0011","font":"minecraft:images"}

execute if score @s cryptid.player.random matches 7 run title @s title {"text":"\ua0012","font":"minecraft:images"}

execute if score @s cryptid.player.random matches 8 run title @s title {"text":"\ua0013","font":"minecraft:images"}
 


execute store result score @s cryptid.player.random run random value 1..20

execute if score @s cryptid.player.random matches 1 run function cryptid:events/node/spawn
execute if score @s cryptid.player.random matches 2 run function cryptid:events/node/block
execute if score @s cryptid.player.random matches 3 run function cryptid:events/node/jump
execute if score @s cryptid.player.random matches 4 run function cryptid:events/node/sign
execute if score @s cryptid.player.random matches 5 run function cryptid:events/node/mobs
execute if score @s cryptid.player.random matches 6 run function cryptid:events/cryptid/stalker1
execute if score @s cryptid.player.random matches 7 run function cryptid:events/cryptid/shy1
execute if score @s cryptid.player.random matches 8 run function cryptid:events/cryptid/shy2
execute if score @s cryptid.player.random matches 9 run function cryptid:events/cryptid/flicker2
execute as @e[tag=cryptid, sort=random, limit=7,distance=1..90] at @s run spreadplayers ~ ~ 10 11 false @s

execute as @s at @s run spreadplayers ~ ~ 10 20 false @s
playsound minecraft:cryptid.screen.corrupted ambient @s ~ ~ ~ 10000 0.1