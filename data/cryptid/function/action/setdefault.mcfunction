scoreboard players set .global cryptid.challenge 3
scoreboard players set .global cryptid.world.furyrate 6
scoreboard players set @a cryptid.maxlives 5


## Fxs
execute unless score .globaltime cryptid.time matches 5.. run return fail
playsound minecraft:entity.villager.death ambient @a
tellraw @a ["",{"translate":"cryptid.message.set_default","color":"red"}]