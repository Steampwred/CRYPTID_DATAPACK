data remove storage cryptid:randomevent current

summon armor_stand ~ ~300 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:[eventhandler.lootroll]}
$execute positioned ~ ~300 ~ as @n[tag=eventhandler.lootroll,type=armor_stand] run loot replace entity @s armor.head loot cryptid:eventhandler/$(eventgroup)

execute positioned ~ ~300 ~ run data modify storage cryptid:randomevent current set from entity @n[type=armor_stand,tag=eventhandler.lootroll] ArmorItems[3].components."minecraft:custom_data"

kill @e[tag=eventhandler.lootroll,type=armor_stand]

function cryptid:events/eventhandler/triggerevent with storage cryptid:randomevent current
