execute if score @s cryptid.timer matches -3 store result score @s cryptid.random run random value 1..4

execute if score @s cryptid.timer matches -3 if score @p cryptid.player.id = @s cryptid.player.id in cryptid:below run tp @p 0 68 38


#execute if score @s cryptid.timer matches -80 if score @s cryptid.player.id = @e[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] player.id run execute in overworld run tp @s 0 200 0

## 4 locations for multiplayer i guess
execute if score @s cryptid.timer matches ..-4 if score @s cryptid.random matches 1 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamroot,distance=..1] cryptid.player.id at @s run tp @s 0 ~ 38
execute if score @s cryptid.timer matches ..-4 if score @s cryptid.random matches 2 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamroot,distance=..1] cryptid.player.id at @s run tp @s 0 ~ -38
execute if score @s cryptid.timer matches ..-4 if score @s cryptid.random matches 3 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamroot,distance=..1] cryptid.player.id at @s run tp @s 38 ~ 0
execute if score @s cryptid.timer matches ..-4 if score @s cryptid.random matches 4 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamroot,distance=..1] cryptid.player.id at @s run tp @s -38 ~ 0

execute if score @s cryptid.timer matches -6 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamroot,distance=..1] cryptid.player.id at @s run tp @s ~ ~ ~ facing entity @n[type=zombie,tag=boss.ring] feet




execute if score @s cryptid.timer matches -140 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamroot,distance=..1] cryptid.player.id run tp @s @n[tag=cryptid.dreamroot]
execute if score @s cryptid.timer matches -140 run forceload remove ~ ~ ~ ~
execute if score @s cryptid.timer matches -140 run kill @s



## Sound effect loop
execute as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.dreamroot,distance=..1] cryptid.player.id run effect give @s resistance 1 255 true


