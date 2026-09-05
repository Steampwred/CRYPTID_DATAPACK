scoreboard players set .global cryptid.challenge -1
scoreboard players set .global cryptid.world.furyrate 3

playsound minecraft:entity.chicken.death ambient @a

scoreboard players set @a cryptid.maxlives 1000000


tellraw @a ["",{"translate":"cryptid.message.set_easy","color":"red"}]