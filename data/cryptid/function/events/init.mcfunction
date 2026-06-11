scoreboard players set @s cryptid.maxlives 5
title @s times 0 3t 0
recipe give @s *



scoreboard players set @s cryptid.player.maxharmony 20000
scoreboard players set @s cryptid.player.minharmony -20000

function cryptid:events/givestarteritems
scoreboard players set @s cryptid.wallspawn 0
scoreboard players set @s cryptid.player.harmony 20000
scoreboard players set @s cryptid.player.flux 0
scoreboard players set @s cryptid.player.strength 0
scoreboard players set @s cryptid.player.event 0
scoreboard players set @s cryptid.player.eventscore 1
scoreboard players set @s cryptid.shotgunammo 0
scoreboard players set @s cryptid.shotgunammo2 0
scoreboard players set @s cryptid.shotgunammo3 0
scoreboard players set @s cryptid.shotguntimer 0
scoreboard players set @s cryptid.jumptimer 0
scoreboard players enable @s cryptid.trigger.tutorialskip

tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"\ua055","font":"minecraft:images"},{"text":" ","font":"minecraft:default"}]
tellraw @s [{"text":"\n\n\n\n\n"},{"text":"\ua056","font":"minecraft:images"},{"text":" ","font":"minecraft:default"}]

time set 1200

##random items
execute store result score @s cryptid.random run random value 1..6
execute if score @s cryptid.random matches 1 run function cryptid:action/give/givecatcher
execute if score @s cryptid.random matches 2 run function cryptid:action/give/givemachete

execute if score @s cryptid.random matches 3 run function cryptid:action/give/givelanternrecipe



tag @s add player.tutorial
tag @s add tutorial.active



tag @s add cryptid.init