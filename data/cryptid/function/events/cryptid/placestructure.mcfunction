execute unless entity @e[type=chicken,tag=cryptid.placestructure, sort=nearest, limit=1] run summon chicken ~ ~620 ~ {Tags:["cryptid","cryptid.placestructure"]}
execute as @e[type=chicken,tag=cryptid.placestructure, sort=nearest, limit=1] run scoreboard players add @s cryptid.spawnattempts 1
execute positioned ~ ~620 ~ as @e[type=chicken,tag=cryptid.placestructure, sort=nearest] if score @s cryptid.spawnattempts matches 1 run function cryptid:action/general/placerandom {"min":"50","max":"130","underheight":"500"}
execute positioned ~ ~620 ~ as @e[type=chicken,tag=cryptid.placestructure, sort=nearest] unless score @s cryptid.spawnattempts matches 1 run spreadplayers ~ ~ 50 130 under 500 false @s




## attempts
execute as @e[type=chicken,tag=cryptid.placestructure, sort=nearest, limit=1, scores={cryptid.spawnattempts=..10}] at @s if entity @n[tag=cryptid.totem2,distance=..140] run return run function cryptid:events/cryptid/placestructure
execute as @e[type=chicken,tag=cryptid.placestructure, sort=nearest, limit=1, scores={cryptid.spawnattempts=..10}] at @s if entity @n[tag=cryptid.lessertotem,distance=..90] run return run function cryptid:events/cryptid/placestructure
execute as @e[type=chicken,tag=cryptid.placestructure, sort=nearest, limit=1, scores={cryptid.spawnattempts=10..}] run kill @s


#on success
execute as @e[type=chicken,tag=cryptid.placestructure, sort=nearest, limit=1] at @s run place structure cryptid:uncanny
execute as @s[type=!player] at @s if entity @p[distance=0..50] run function cryptid:events/general/cryptidspawn
execute as @e[type=chicken,tag=cryptid.placestructure] at @s run playsound minecraft:ambient.basalt_deltas.mood ambient @a[distance=0..60] ~ ~ ~ 1 0.5

kill @e[type=chicken, tag=cryptid.placestructure]