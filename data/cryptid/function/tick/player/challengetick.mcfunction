##challenge mode
execute store result score @s cryptid.event.random run random value 1..25000
scoreboard players add @s cryptid.challengetime 1
scoreboard players operation @s cryptid.challengesec = @s cryptid.challengetime
scoreboard players operation @s cryptid.challengesec /= 20 cryptid.challengetime
title @a actionbar ["",{"translate":"cryptid.challenge.seconds_survived","color":"dark_red"},{"bold":true,"color":"red","score":{"objective":"cryptid.challengesec","name":"@s"}}]

##apply ALL events
function cryptid:events/eventhandler/macroroll {"eventgroup":"low"}
function cryptid:events/eventhandler/macroroll {"eventgroup":"mid"}
function cryptid:events/eventhandler/macroroll {"eventgroup":"high"}
##memory cleanup
kill @e[tag=cryptid, distance=100..]