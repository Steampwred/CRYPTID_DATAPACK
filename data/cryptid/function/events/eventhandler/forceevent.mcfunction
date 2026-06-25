execute store result score @s cryptid.event.random run random value 1..91
tellraw @a[tag=cryptid.debug] ["",{"text":"rand \u0020--> \u0020"},{"score":{"name":"@s","objective":"cryptid.event.random"}}]
function cryptid:events/eventhandler/eventcheck

