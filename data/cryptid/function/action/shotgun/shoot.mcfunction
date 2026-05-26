function cryptid:action/shotgun/ammo

scoreboard players set @s cryptid.shotgun.cooldown 80

stopsound @s ambient minecraft:cryptid.shotfire
attribute @s minecraft:generic.knockback_resistance base set 0.01
execute as @s[tag=!boss.fight.1] anchored eyes run damage @s 6 minecraft:out_of_world by @s
attribute @s minecraft:generic.knockback_resistance base set 0


tag @s add shootingun
execute anchored eyes run scoreboard players set @s cryptid.range 70
execute anchored eyes positioned ^ ^ ^0.2 run function cryptid:tick/shotraycast

tp @s ^ ^ ^ ~ ~-25

playsound minecraft:cryptid.shotfire ambient @a[distance=0..20] ~ ~ ~ 1 1.2



##particles
execute anchored eyes run particle minecraft:campfire_signal_smoke ^0.01 ^ ^1 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:campfire_signal_smoke ^ ^ ^0.095 ^ ^ ^1000000 0.00001 0
execute anchored eyes run particle minecraft:campfire_signal_smoke ^ ^-0.01 ^0.015 ^ ^ ^1000000 0.00001 0

execute anchored eyes run particle minecraft:smoke ^ ^ ^0.3 0.2 0.2 0.2 0.001 50
execute anchored eyes run particle minecraft:flash ^ ^ ^3.3 0.2 0.2 0.2 0.001 50



execute anchored eyes run particle minecraft:campfire_signal_smoke ^0.1 ^ ^1 ^4 ^ ^100 0.0002 0
execute anchored eyes run particle minecraft:campfire_signal_smoke ^-0.1 ^ ^-1 ^ ^-4 ^100 0.0002 0
execute anchored eyes run particle minecraft:campfire_signal_smoke ^0.1 ^0.1 ^1 ^1 ^4 ^100 0.0002 0
execute anchored eyes run particle minecraft:campfire_signal_smoke ^-0.1 ^-0.1 ^-1 ^-1 ^4 ^100 0.0002 0
execute anchored eyes run particle minecraft:campfire_signal_smoke ^ ^-0.1 ^ ^-1 ^4 ^100 0.0002 0
execute anchored eyes run particle minecraft:campfire_signal_smoke ^ ^0.1 ^ ^1 ^4 ^100 0.0002 0




