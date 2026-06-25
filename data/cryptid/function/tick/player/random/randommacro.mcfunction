
$execute store result score @s cryptid.event.random run random value 1..$(x)


$tellraw @a[tag=cryptid.debug] ["",{"text":"random number between 1 and $(x)"}]

tellraw @a[tag=cryptid.debug] ["",{"text":"rand \u0020--> \u0020"},{"score":{"name":"@s","objective":"cryptid.event.random"}}]
