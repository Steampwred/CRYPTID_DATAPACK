gamemode spectator @s
tag @s add cryptid.jointimer
execute store result score @s cryptid.random run random value 1..20

playsound minecraft:cryptid.screen.corrupted ambient @s
tp @s ~ ~ ~ 180 0

tellraw @s[scores={cryptid.random=1}] ["",{"translate":"cryptid.join.msg_1","color":"#990033"}]
tellraw @s[scores={cryptid.random=2}] ["",{"translate":"cryptid.join.msg_2","color":"#990033"}]
tellraw @s[scores={cryptid.random=3}] ["",{"translate":"cryptid.join.msg_3","color":"#990033"}]
tellraw @s[scores={cryptid.random=4}] ["",{"translate":"cryptid.join.msg_4","color":"#990033"}]
tellraw @s[scores={cryptid.random=5}] ["",{"translate":"cryptid.join.msg_5","color":"#990033"}]
tellraw @s[scores={cryptid.random=6}] ["",{"translate":"cryptid.join.msg_6","color":"#990033"}]
tellraw @s[scores={cryptid.random=7}] ["",{"translate":"cryptid.join.msg_7","color":"#990033"}]
tellraw @s[scores={cryptid.random=8}] ["",{"translate":"cryptid.join.msg_8","color":"#990033"}]
tellraw @s[scores={cryptid.random=9}] ["",{"translate":"cryptid.join.msg_9","color":"#990033"}]
tellraw @s[scores={cryptid.random=10}] ["",{"translate":"cryptid.join.msg_10","color":"#990033"}]
tellraw @s[scores={cryptid.random=11}] ["",{"translate":"cryptid.join.msg_11","color":"#990033"}]
tellraw @s[scores={cryptid.random=12}] ["",{"translate":"cryptid.join.msg_12","color":"#990033"}]
tellraw @s[scores={cryptid.random=13}] ["",{"translate":"cryptid.join.msg_13","color":"#990033"}]
tellraw @s[scores={cryptid.random=13}] ["",{"translate":"cryptid.join.msg_14","color":"#990033"}]

execute store result score @s cryptid.random run random value 1..4
attribute @s minecraft:generic.jump_strength modifier remove 666

##random image
title @s times 0 27t 0
execute if score @s cryptid.random matches 1 run title @s title {"text":"\ua006","font":"minecraft:images"}

execute if score @s cryptid.random matches 2 run title @s title {"text":"\ua007","font":"minecraft:images"}

execute if score @s cryptid.random matches 3 run title @s title {"text":"\ua008","font":"minecraft:images"}

execute if score @s cryptid.random matches 4 run title @s title {"text":"\ua009","font":"minecraft:images"}
 

execute store result score @s cryptid.random run random value 1..20

execute if score @s cryptid.random matches 2 run function cryptid:events/node/block
execute if score @s cryptid.random matches 4 run function cryptid:events/node/sign
execute if score @s cryptid.random matches 9 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.random matches 12 run function cryptid:events/cryptid/chunktorch
execute if score @s cryptid.random matches 14 run function cryptid:events/cryptid/chunktall
execute if score @s cryptid.random matches 17 run function cryptid:events/cryptid/chunkleaves


execute as @s at @s[y=50, dy=1000] run spreadplayers ~ ~ 10 20 false @s
execute as @s at @s[y=50, dy=-1000] run spreadplayers ~ ~ 10 20 under 30 false @s

playsound minecraft:cryptid.screen.corrupted ambient @s ~ ~ ~ 10000 1





##check for cool names

function cryptid:action/general/namecheck