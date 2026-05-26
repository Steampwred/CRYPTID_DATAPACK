execute if items entity @s weapon.mainhand minecraft:crossbow[custom_data~{cryptid.shotgun:1b}] run item modify entity @s weapon.mainhand cryptid:reloadshotgun
execute if items entity @s weapon.offhand minecraft:crossbow[custom_data~{cryptid.shotgun:1b}] run item modify entity @s weapon.offhand cryptid:reloadshotgun

execute anchored eyes run particle crimson_spore ^-0.35 ^-0.04 ^0.4 0.1 0.1 0.1 1 3

execute if items entity @s weapon.* minecraft:crossbow[custom_data~{cryptid.maxammo:1}] run scoreboard players set @s cryptid.shotgunammo 1
execute if items entity @s weapon.* minecraft:crossbow[custom_data~{cryptid.maxammo:2}] run scoreboard players set @s cryptid.shotgunammo2 2
execute if items entity @s weapon.* minecraft:crossbow[custom_data~{cryptid.maxammo:3}] run scoreboard players set @s cryptid.shotgunammo3 4
tag @s add gunloaded
