
execute as @n[type=firework_rocket,distance=..2] run kill @s
stopsound @s * minecraft:entity.firework_rocket.launch
stopsound @s player minecraft:item.crossbow.shoot
execute if items entity @s weapon.mainhand minecraft:crossbow[custom_data~{cryptid.shotgun:1b}] run item modify entity @s weapon.mainhand cryptid:reloadshotgun2
execute if items entity @s weapon.offhand minecraft:crossbow[custom_data~{cryptid.shotgun:1b}] run item modify entity @s weapon.offhand cryptid:reloadshotgun2

advancement revoke @p only cryptid:shootgun

execute if score @s cryptid.shotgunammo matches ..0 run return fail
execute if score @s cryptid.shotgunammo2 matches ..0 run return fail
execute if score @s cryptid.shotgunammo3 matches ..0 run return fail
function cryptid:action/shotgun/shoot
tag @s remove gunloaded




return fail
execute if entity @n[type=firework_rocket, nbt={FireworksItem:{components:{"minecraft:custom_data":{cryptid.shotgunarrow:1b}}}}] if entity @p[tag=shootingun, scores={cryptid.shotgunammo=1..}] run function cryptid:action/shotgun/shootgun
execute if entity @n[type=firework_rocket, nbt={FireworksItem:{components:{"minecraft:custom_data":{cryptid.shotgunarrow:2b}}}}] if entity @p[tag=shootingun, scores={cryptid.shotgunammo2=1..}] run function cryptid:action/shotgun/shootgun2
execute if entity @n[type=firework_rocket, nbt={FireworksItem:{components:{"minecraft:custom_data":{cryptid.shotgunarrow:3b}}}}] if entity @p[tag=shootingun, scores={cryptid.shotgunammo3=1..}] run function cryptid:action/shotgun/shootgun3
#kill @s
say caboom
kill @n[type=firework_rocket]
advancement revoke @p only cryptid:shootgun