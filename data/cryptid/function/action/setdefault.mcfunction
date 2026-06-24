scoreboard players set .global cryptid.challenge 3
scoreboard players set .global cryptid.world.furyrate 10


playsound minecraft:entity.villager.death ambient @a

scoreboard players set @a cryptid.maxlives 5


tellraw @a ["",{"text":"Set to default mode","color":"red"}]