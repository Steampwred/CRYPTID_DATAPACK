stopsound @p
tag @s add angry
tag @p add cryptid.glitchscreen
playsound minecraft:cryptid.snap.ambient ambient @a
playsound minecraft:cryptid.crawler.anger ambient @a ~ ~ ~ 10 1.1
tp @s ~ ~ ~ facing entity @p
scoreboard players set @s cryptid.timer 2000

scoreboard players set @a[distance=..20] cryptid.player.titlecooldown 40
title @a[distance=0..25] actionbar {"translate":"cryptid.message.taste_flesh","color":"dark_red"}

data merge entity @s {DeathLootTable:"minecraft:empty"}