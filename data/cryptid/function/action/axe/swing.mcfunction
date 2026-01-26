playsound minecraft:cryptid.axe.hit ambient @a ~ ~ ~ 1 0.1
execute anchored eyes run particle minecraft:crit ^ ^ ^1 0.6 0.6 0.6 0.01 10 force
damage @s 3 minecraft:out_of_world by @s

execute anchored eyes as @e[type=!#cryptid:nonliving, distance=0.1..2] at @s run function cryptid:action/axe/kb
execute anchored eyes as @e[type=!#cryptid:nonliving, distance=0.1..2] at @s run effect give @p minecraft:instant_health 1 0