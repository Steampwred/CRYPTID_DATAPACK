##trigger
execute as @s[tag=!prime, scores={cryptid.timer=2}] run particle minecraft:ominous_spawning ~ ~ ~ 0.1 0.1 0.1 1 100
execute as @s[tag=!prime, scores={cryptid.timer=2}] run playsound minecraft:item.armor.equip_netherite ambient @a[distance=0..20] ~ ~ ~ 0.1
execute as @s[tag=!prime, scores={cryptid.timer=2}] run tag @s add prime

execute if entity @s[tag=!activated,tag=prime] if entity @n[distance=0.2..1,type=!armor_stand,type=!item,type=!experience_orb,type=!marker,tag=!trap.trapped] run function cryptid:action/trap/tickprime
execute if entity @s[tag=activated,scores={cryptid.timer=..0}] unless entity @n[distance=..1,type=!armor_stand,type=!item,type=!experience_orb,type=!marker,tag=trap.trapped] run tag @s add broken
execute as @e[tag=trap.trapped] at @s unless entity @n[tag=cryptid.trap,tag=activated,tag=!broken,distance=..1] run tag @s remove trap.trapped

execute if entity @s[tag=activated,tag=!broken] run function cryptid:action/trap/tickbite

execute if block ~ ~-0.5 ~ air run loot spawn ~ ~ ~ loot cryptid:entities/beartrap
execute if block ~ ~-0.5 ~ air run function cryptid:action/trap/trapbreak



