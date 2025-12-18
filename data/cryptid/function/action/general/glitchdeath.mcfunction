particle minecraft:crimson_spore ~ ~ ~ 0.4 1 0.4 100 4000
execute as @a[distance=..6] at @s run tp @s ~ ~ ~ facing entity @e[sort=random,limit=1,distance=..10,tag=cryptid,type=!armor_stand,type=!marker,type=!player]
playsound minecraft:cryptid.snap.ambient ambient @a ~ ~ ~ 1 0.8

fill ~ ~-8 ~ ~ ~ ~ air

tp @s ~ ~-1000 ~
kill @s