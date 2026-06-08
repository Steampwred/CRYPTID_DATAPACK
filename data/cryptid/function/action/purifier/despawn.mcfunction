particle end_rod ~ ~1 ~ 0.1 0.1 0.1 1 500
execute at @a if score @s cryptid.player.id = @p cryptid.player.id at @p run playsound minecraft:block.beacon.deactivate master @a[distance=..15] ~ ~ ~ 10 2

execute at @e[tag=cryptid.cursor,type=armor_stand] if score @s cryptid.player.id = @n[tag=cryptid.cursor,type=armor_stand] cryptid.player.id run kill @n[tag=cryptid.cursor,type=armor_stand]
kill @s
