scoreboard players set .global cryptid.challenge 2
scoreboard players set .global cryptid.world.furyrate 15


time set midnight

scoreboard players set .global cryptid.eventcap 20
scoreboard players set .current cryptid.eventcap 0

scoreboard players set @a cryptid.maxlives 3
scoreboard players add .global cryptid.worldtimer 1200000

playsound minecraft:cryptid.jelly.capture ambient @a
tellraw @a ["",{"text":"Manic mode is now active \nLives set to 3, flux in negatives only!\nGood luck!","color":"red"}]