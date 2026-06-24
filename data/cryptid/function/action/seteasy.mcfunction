scoreboard players set .global cryptid.challenge -1
scoreboard players set .global cryptid.world.furyrate 5

playsound minecraft:entity.chicken.death ambient @a

scoreboard players set @a cryptid.maxlives 1000000


tellraw @a ["",{"text":"Set to easy mode","color":"red"}]