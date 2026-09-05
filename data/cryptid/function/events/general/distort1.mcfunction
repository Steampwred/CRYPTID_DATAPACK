##function
function cryptid:events/cryptid/flicker2
stopsound @p
playsound minecraft:cryptid.snap.ambient ambient @a

##actual
playsound minecraft:ambient.cave ambient @a[distance=0..20] ~ ~ ~ 1 0.6

##time


execute as @e[distance=1..10, sort=random, limit=10, type=!player] at @s run function cryptid:action/distorted/init

##end



##random message

execute store result score @s cryptid.player.random run random value 1..5

execute if score @s cryptid.player.random matches 1 run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"translate":"cryptid.event.flicker2.run"}]
execute if score @s cryptid.player.random matches 2 run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"translate":"cryptid.event.flicker2.see_you"}]
execute if score @s cryptid.player.random matches 3 run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"translate":"cryptid.event.flicker2.question"}]
execute if score @s cryptid.player.random matches 4 run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"translate":"cryptid.event.flicker2.hunger"}]
execute if score @s cryptid.player.random matches 5 run tellraw @s ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"translate":"cryptid.event.flicker2.smile"}]