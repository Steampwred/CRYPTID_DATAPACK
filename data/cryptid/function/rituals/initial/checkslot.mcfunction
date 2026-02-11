## checks blocks place around circle, if a lodestone, checl the block above it seperatly
execute anchored feet positioned ^ ^-3.5 ^4 if block ~ ~ ~ lodestone run function cryptid:rituals/initial/blockcheck/lodestone
execute anchored feet positioned ^ ^-3.5 ^4 run particle dripping_obsidian_tear ~ ~ ~ .0 .0 .0 0 50
execute anchored feet positioned ^ ^-3.5 ^4 if block ~ ~ ~ enchanting_table run particle enchant ~ ~1 ~ 0 0 0 0.9 40

scoreboard players add @s cryptid.ritual.turns 1
tp @s ~ ~ ~ ~45 ~