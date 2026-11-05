execute if score @s cryptid.timer matches -3 if score @p cryptid.player.id = @s cryptid.player.id in cryptid:below run tp @p ~ 800 ~



#execute if score @s cryptid.timer matches -80 if score @s cryptid.player.id = @e[type=armor_stand,tag=cryptid.dreamofanotherworld,distance=..1] player.id run execute in overworld run tp @s 0 200 0
execute if score @s cryptid.timer matches -300 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.freedomvision,distance=..1] cryptid.player.id run tp @s @n[tag=cryptid.freedomvision]
execute if score @s cryptid.timer matches -300 as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.freedomvision,distance=..1] cryptid.player.id run attribute @s minecraft:generic.gravity modifier add 1301 0.25 add_value
execute if score @s cryptid.timer matches -300 run forceload remove ~ ~ ~ ~
execute if score @s cryptid.timer matches -300 run kill @s



## Sound effect loop
execute as @a if score @s cryptid.player.id = @n[type=armor_stand,tag=cryptid.freedomvision,distance=..1] cryptid.player.id run effect give @s resistance 1 255 true


