$execute store result score @s cryptid.event.random run random value 1..$(x)


$tellraw @a[tag=cryptid.debug] ["",{"translate":"cryptid.debug.random_range","with":["$(x)"]}]

tellraw @a[tag=cryptid.debug] ["",{"translate":"cryptid.debug.rand_prefix"},{"score":{"name":"@s","objective":"cryptid.event.random"}}]

## display event chance on radio
scoreboard players operation .buffer cryptid.randomeventcap = @s cryptid.randomeventcap
scoreboard players set @s cryptid.player.event 90
scoreboard players operation .buffer cryptid.randomeventcap /= @s cryptid.player.event
scoreboard players operation @s cryptid.player.event = .buffer cryptid.randomeventcap