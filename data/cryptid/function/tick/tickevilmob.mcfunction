execute store result score @s cryptid.player.random run random value 1..4000

#   deat clear
execute if entity @s[nbt={DeathTime:1s}] run tag @s add dead
execute if entity @s[nbt={DeathTime:1s}] on passengers run kill @s[tag=cryptid.brainparasite]




execute if score @s[tag=!dead] cryptid.player.random matches 1..4 run function cryptid:events/cryptid/sethostile

execute if score @s[tag=!dead] cryptid.player.random matches 5..6 run function cryptid:action/infested/unhostile


#execute unless entity @e[tag=cryptid.brainparasite, type=zombified_piglin, sort=nearest, limit=1, distance=0..2] run function cryptid:action/hostile/unhostile

execute if entity @p[distance=0..8] run effect give @s minecraft:speed 1 0 true
execute if entity @p[distance=0..5] if entity @s[nbt={HurtTime:7s}] run execute as @e[tag=cryptid.brainparasite, distance=0..20] at @s run damage @s 0 minecraft:player_attack by @p
execute if entity @p[distance=0..5] if entity @s[nbt={HurtTime:7s}] run playsound minecraft:cryptid.snap.ambient ambient @a[distance=0..20] ~ ~ ~ 1 0.8 1
execute if score @s cryptid.player.random matches 1..10 run playsound minecraft:entity.zoglin.angry ambient @a[distance=0..10] ~ ~ ~ 0.3 0.1

