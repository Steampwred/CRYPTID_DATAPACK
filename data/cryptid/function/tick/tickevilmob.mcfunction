execute store result score @s cryptid.player.random run random value 1..3000

#   deat clear
execute if entity @s[nbt={DeathTime:1s}] run tag @s add dead
execute if entity @s[nbt={DeathTime:1s}] on passengers run kill @s[tag=cryptid.brainparasite]

## hostless pariste fix
execute as @e[tag=cryptid.brainparasite,distance=..4] unless predicate cryptid:checkriding run kill @s



execute if score @s[tag=!dead] cryptid.player.random matches 1..5 run function cryptid:events/cryptid/sethostile

execute if score @s[tag=!dead] cryptid.player.random matches 6..10 unless entity @e[tag=cryptid.brainparasite,distance=1.3..3,type=zombified_piglin] run function cryptid:action/hostile/unhostile


#execute unless entity @e[tag=cryptid.brainparasite, type=zombified_piglin, sort=nearest, limit=1, distance=0..2] run function cryptid:action/hostile/unhostile

execute if entity @p[distance=0..8] run effect give @s minecraft:speed 1 0 true
execute if entity @p[distance=0..5] if entity @s[nbt={HurtTime:7s}] run execute as @e[tag=cryptid.brainparasite, distance=0..20] at @s run damage @s 0 minecraft:player_attack by @p
execute if entity @p[distance=0..5] if entity @s[nbt={HurtTime:7s}] run playsound minecraft:cryptid.snap.ambient ambient @a[distance=0..20] ~ ~ ~ 1 0.8 1
execute if score @s cryptid.player.random matches 1..10 run playsound minecraft:entity.zoglin.angry ambient @a[distance=0..10] ~ ~ ~ 0.3 0.1

