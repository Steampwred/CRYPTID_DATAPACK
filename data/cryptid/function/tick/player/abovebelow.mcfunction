execute unless score .heartbeat cryptid.globalevent matches 2 run return fail
execute store result score @s cryptid.player.random run random value 1..10
execute if score @s cryptid.player.random matches 1 run function cryptid:events/void/wyrmalt