
effect give @a[distance=..10] minecraft:darkness 3 1 true
playsound minecraft:cryptid.ambient.mimic ambient @a[distance=..10] ~ ~ ~ 1 0.5
#tag @s add counting
scoreboard players set @s cryptid.ritual.stability 0

execute positioned ~ ~ ~ if predicate cryptid:checkritual_etable run function cryptid:rituals/action/occultblocks/enchanting_table

## Initaite Ritual With Circle
tp @s ~ ~ ~ 0 0
execute positioned ~ ~-1 ~ if predicate cryptid:checkritual_circle run scoreboard players set @s cryptid.timer 100

