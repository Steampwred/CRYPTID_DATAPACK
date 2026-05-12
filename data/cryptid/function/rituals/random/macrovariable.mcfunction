
$execute store result score @s cryptid.ritual.probability run random value 1..$(x)

#debug show values
#$tellraw @a ["",{"text":"random number between 1 and $(x)"}]
#tellraw @a ["",{"text":"result: "},{"score":{"name":"@s","objective":"cryptid.ritual.probability"}}]
