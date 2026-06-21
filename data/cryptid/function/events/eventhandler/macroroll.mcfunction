data remove storage cryptid:randomevent current

## Load and store a random event item
summon armor_stand ~ ~300 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:[eventhandler.lootroll]}
$execute positioned ~ ~300 ~ as @n[tag=eventhandler.lootroll,type=armor_stand] run loot replace entity @s armor.head loot cryptid:eventhandler/$(eventgroup)
execute positioned ~ ~300 ~ run data modify storage cryptid:randomevent current set from entity @n[type=armor_stand,tag=eventhandler.lootroll] ArmorItems[3].components."minecraft:custom_data"
kill @e[tag=eventhandler.lootroll,type=armor_stand]

#debug check
$tellraw @a[tag=cryptid.debug] {"text": "$(eventgroup) event", "color": "green", "bold": true}

## Load and store fury requirment of event
scoreboard players set .buffer cryptid.world.fury 0
execute store result score .buffer cryptid.world.fury run data get storage cryptid:randomevent current.fury

## Run event if at required fury
execute if score .global cryptid.world.fury >= .buffer cryptid.world.fury run return run function cryptid:events/eventhandler/triggerevent with storage cryptid:randomevent current

# else REROLL

tellraw @a[tag=cryptid.debug] {"text": "rerolling", "color": "green", "bold": true}

$function cryptid:events/eventhandler/macroroll {eventgroup:"$(eventgroup)"}