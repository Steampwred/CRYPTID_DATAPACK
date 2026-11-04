execute if entity @s[tag=!inittree] positioned ^ ^ ^6 facing entity @e[sort=random,limit=1] feet run function cryptid:events/node/block
execute if entity @s[tag=!inittree] run place feature cryptid:convertflesh ~ ~5 ~
execute if entity @s[tag=!inittree] run execute positioned ~ ~12 ~ run function cryptid:events/general/corruptionspawner
execute if entity @s[tag=!inittree] positioned ^ ^ ^8 facing entity @e[sort=random,limit=1] feet run function cryptid:events/node/block
execute if entity @s[tag=!inittree] run scoreboard players set @s cryptid.tree.health 5
execute if entity @s[tag=!inittree] run scoreboard players set @s cryptid.damagedealt 0
execute if entity @s[tag=!inittree] run tag @e[type=item_display, tag=cryptid.eldertree] add inittree


##inground 3x3 air block predicate
execute unless predicate cryptid:check_air_square run tp @s ~ ~0.05 ~ facing entity @p
execute unless predicate cryptid:check_air_square positioned ~ ~10 ~ positioned over motion_blocking_no_leaves run particle dust_pillar{block_state:{Name:netherrack}} ~ ~-0.1 ~ 1 0.2 1 0.01 10


## decrease flux
#execute if score .heartbeat cryptid.globalevent matches 4 run scoreboard players remove @a[distance=51..70] cryptid.player.flux.modifier 1 
#execute if score .heartbeat cryptid.globalevent matches 4 run scoreboard players remove @a[distance=36..50] cryptid.player.flux.modifier 2 
#execute if score .heartbeat cryptid.globalevent matches 4 run scoreboard players remove @a[distance=21..35] cryptid.player.flux.modifier 3 
#execute if score .heartbeat cryptid.globalevent matches 4 run scoreboard players remove @a[distance=0..20] cryptid.player.flux.modifier 4 



#despawn chance at set hours
execute if score .globaltime cryptid.time matches 1200 if score @s cryptid.timer matches ..-12000 if score @s cryptid.random matches 1..100 run function cryptid:action/general/grounddeath
## tick
particle falling_dust{block_state:{Name:red_concrete}} ~ ~2 ~ 0.6 2.4 0.6 0.1 2 force
fill ~ ~-1 ~ ~ ~-1 ~ obsidian replace #cryptid:nonsolid

# prevents events when in ground
execute unless block ~ ~2 ~ #cryptid:nonsolid run return fail

## spawn corruption
execute if score .globaltime cryptid.time matches 1200 positioned ~ ~3 ~ run function cryptid:events/general/corruptionspawner
execute if score .globaltime cryptid.time matches 18000 positioned ~ ~3 ~ run function cryptid:events/general/corruptionspawner


## new idea periods of activity and inactivity with min cooldowns

## passisive abilities
execute store result score @s cryptid.player.random run random value 1..4000
    #flicker
execute if score @s cryptid.player.random matches 5..9 run function cryptid:events/cryptid/flicker5
    #infest
execute if score @s cryptid.player.random matches 71..80 run particle crimson_spore ~ ~2 ~ 2.4 5 2.4 0.1 1000 force
execute if score @s cryptid.player.random matches 71..80 as @n[type=#cryptid:infestable,tag=!cryptid] at @s run function cryptid:action/hostile/advancecorrupt
execute if score @s cryptid.player.random matches 71..88 as @e[tag=cryptid.evilmob,type=#cryptid:infestable,distance=..40,limit=2] at @s run damage @s 0 minecraft:player_attack by @p
   #pop
execute if score @s cryptid.player.random matches 81..90 as @n[type=#cryptid:infestable,tag=!cryptid] at @s run function cryptid:action/general/fireworksdeath
    #soma
execute if score @s cryptid.player.random matches 20..70 positioned as @e[distance=..10,sort=random,limit=1] positioned over motion_blocking_no_leaves run fillbiome ~-8 ~-5 ~-8 ~8 ~8 ~8 cryptid:soma

## Agro abilities
execute if entity @p[distance=..30] if score @s cryptid.mob.cooldown matches ..0 run function cryptid:action/eldertree/attack

execute as @s[tag=summonatk] if score @s cryptid.mob.cooldown matches 100.. run function cryptid:action/eldertree/ticksummons
execute as @s[tag=groundatk] if score @s cryptid.mob.cooldown matches 100.. run function cryptid:action/eldertree/tickground

#heartbeat
execute if score .heartbeat cryptid.globalevent matches 5 run playsound minecraft:cryptid.heartbeat ambient @a[distance=0..60] ~ ~ ~ 4 0.1

##### Killing mechanincs

execute as @s[tag=hurt] run function cryptid:action/eldertree/hurt


execute as @s[scores={cryptid.damagedealt=1..}] run tp @s ~ ~0.05 ~
execute as @s[scores={cryptid.damagedealt=1..}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 red_concrete replace #cryptid:nonsolid
execute as @s[scores={cryptid.damagedealt=1..}] run scoreboard players remove @s cryptid.damagedealt 1

execute if score @s cryptid.tree.health matches ..0 run function cryptid:events/quietkill