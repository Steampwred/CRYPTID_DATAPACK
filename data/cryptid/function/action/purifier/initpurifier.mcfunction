execute unless entity @s[tag=init] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["cryptid.cursor"]}

## link to player
execute unless entity @s[tag=init] run scoreboard players operation @s cryptid.player.id = @p cryptid.player.id
execute unless entity @s[tag=init] run scoreboard players operation @n[tag=cryptid.cursor,distance=..1,type=armor_stand] cryptid.player.id = @s cryptid.player.id
tag @s add init
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 0.8

scoreboard players set @s cryptid.timer 1200