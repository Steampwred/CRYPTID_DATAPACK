##init

execute if entity @s[tag=!init] run function cryptid:action/toteminit
execute if entity @s[tag=!init] run tag @s add init


effect give @s invisibility infinite 255 true


execute store result score @s cryptid.player.random run random value 1..200

execute if score @s cryptid.player.random matches 1..5 run playsound minecraft:block.conduit.ambient ambient @a[distance=0..20] ~ ~ ~ 0.5 0.1


scoreboard players remove @s[scores={cryptid.totemblood=1..}] cryptid.totemblood 1



##fuyeling
execute at @s if entity @e[type=!villager, tag=!cryptid, distance=0.5..7.5, nbt={HurtTime:9s}] if entity @p[distance=0..10] run scoreboard players add @s cryptid.totemblood 400


stopsound @a[distance=0..20] * minecraft:entity.villager.ambient

##patrticles


particle falling_dust{block_state:{Name:nether_wart,Properties:{age:"3"}}} ~ ~1 ~ 4 4 4 0.01 2

execute if score @s cryptid.totemblood matches 10.. run execute at @s anchored eyes run particle minecraft:crimson_spore ^-0.05 ^ ^0.3 0.01 0.01 0.01 0.01 4


execute if score @s cryptid.totemblood matches 10.. run execute at @s run execute as @e[distance=0.5..15, tag=cryptid, scores={cryptid.mob.class=..4},tag=!cryptid.ignore.totemward] run damage @s 1

execute if score @s cryptid.totemblood matches 10.. run execute at @s run execute as @e[distance=0.5..15, tag=cryptid, scores={cryptid.mob.class=..4},tag=!cryptid.ignore.totemward] run damage @s 1

execute if score @s cryptid.totemblood matches 10.. run execute at @s run execute as @e[distance=0.5..15, tag=cryptid, scores={cryptid.mob.class=..4},tag=!cryptid.ignore.totemward] at @s run particle minecraft:sculk_soul ~ ~ ~ 0.4 0.4 0.4 0.01 30

execute if score @s cryptid.totemblood matches 10.. run execute at @s run execute as @e[distance=0.5..15, tag=cryptid, scores={cryptid.mob.class=..4},tag=!cryptid.ignore.totemward] at @s run playsound minecraft:entity.vex.death ambient @a ~ ~ ~ 0.11 0.1


execute if score @s cryptid.totemblood matches 10.. run execute at @s run execute as @e[distance=0.5..15, tag=cryptid, scores={cryptid.mob.class=..4},tag=!cryptid.ignore.totemward] at @s run tp @s ^ ^ ^-0.33 facing entity @e[type=villager, tag=cryptid.lessertotem,sort=nearest, limit=1]


execute if score @s cryptid.totemblood matches 10.. run kill @e[tag=cryptid, tag=cryptid.grabber, type=husk, distance=0..15]


##done?