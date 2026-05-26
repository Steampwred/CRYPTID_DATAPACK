scoreboard players remove @p cryptid.shotgunammo2 1


stopsound @p ambient minecraft:cryptid.shotfire
attribute @p minecraft:generic.knockback_resistance base set 0.05
execute as @p[tag=!boss.fight.1] anchored eyes run damage @s 4 minecraft:out_of_world by @s
attribute @p minecraft:generic.knockback_resistance base set 0



execute as @p at @s anchored eyes run scoreboard players set @s cryptid.range 90
execute as @p at @s anchored eyes positioned ^ ^ ^0.2 run function cryptid:tick/shotraycast

execute as @p at @s run tp @s ^ ^ ^ ~ ~-20

playsound minecraft:cryptid.shotfire ambient @a[distance=0..20] ~ ~ ~ 1 1.2



##particles
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^0.01 ^ ^1 ^ ^ ^1000000 0.00001 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^ ^ ^0.095 ^ ^ ^1000000 0.00001 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^ ^-0.01 ^0.015 ^ ^ ^1000000 0.00001 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^0.02 ^ ^1.5 ^ ^ ^1000000 0.00001 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^ ^ ^0.195 ^ ^ ^1000000 0.00001 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^ ^-0.02 ^0.025 ^ ^ ^1000000 0.00001 0


execute as @p at @s anchored eyes run particle minecraft:smoke ^ ^ ^0.3 0.2 0.2 0.2 0.001 50
execute as @p at @s anchored eyes run particle minecraft:smoke ^ ^ ^0.3 0.2 0.2 0.2 0.001 50

execute as @p at @s anchored eyes run particle minecraft:flash ^ ^ ^3.3 0.2 0.2 0.2 0.001 50



execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^0.1 ^ ^1 ^4 ^ ^100 0.0002 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^-0.1 ^ ^-1 ^ ^-4 ^100 0.0002 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^0.1 ^0.1 ^1 ^1 ^4 ^100 0.0002 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^-0.1 ^-0.1 ^-1 ^-1 ^4 ^100 0.0002 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^ ^-0.1 ^ ^-1 ^4 ^100 0.0002 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^ ^0.1 ^ ^1 ^4 ^100 0.0002 0


execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^0.1 ^ ^1 ^4 ^ ^100 0.0002 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^-0.1 ^ ^-1 ^ ^-4 ^100 0.0002 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^0.1 ^0.1 ^1 ^1 ^4 ^100 0.0002 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^-0.1 ^-0.1 ^-1 ^-1 ^4 ^100 0.0002 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^ ^-0.1 ^ ^-1 ^4 ^100 0.0002 0
execute as @p at @s anchored eyes run particle minecraft:campfire_signal_smoke ^ ^0.1 ^ ^1 ^4 ^100 0.0002 0




kill @s


