execute positioned ~ ~5 ~ run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air replace barrier
tag @a remove player.tutorial
tag @a remove tutorial.active
execute as @a[distance=0..10] at @s run function cryptid:action/player/endtutorial
kill @e[type=minecraft:armor_stand, tag=cryptid.spawnbox]
