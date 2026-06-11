execute if entity @s[tag=cryptid.evilmob] run function cryptid:action/hostile/unhostile
tag @s remove cryptid.infested
tag @s remove cryptid
tag @s remove cryptid.ignore.radar
tag @s remove cryptid.ignore.totemward

execute if entity @s[name="?????"] run data merge entity @s {CustomName:'{"text":"☩"}'}

playsound minecraft:entity.parrot.imitate.silverfish ambient @a[distance=0..20] ~ ~ ~ 0.8 0.4
particle electric_spark ~ ~1 ~ 0 0 0 0.2 1