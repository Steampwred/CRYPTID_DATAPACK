scoreboard players set .global cryptid.challenge 3
scoreboard players set .global cryptid.world.furyrate 10
scoreboard players set @a cryptid.maxlives 5


## Fxs
execute unless score .globaltime cryptid.time matches 5.. run return fail
playsound minecraft:entity.villager.death ambient @a
tellraw @a ["",{"text":"Set to default mode","color":"red"}]