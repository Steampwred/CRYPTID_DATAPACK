

##global commands
execute if score .heartbeat cryptid.globalevent matches 1 run tp @s ~ ~ ~ facing entity @e[sort=random,limit=1]
execute store result score @s cryptid.player.random run random value 1..100

execute if score @s cryptid.player.random matches 1 run playsound minecraft:entity.zoglin.angry ambient @a[distance=0..10] ~ ~ ~ 0.3 0.1


execute store result score @s cryptid.player.random run random value 1..2000

##constant commands
execute if entity @s[tag=killinfested] at @s run particle block{block_state:{Name:red_concrete}} ~ ~1 ~ .2 .2 .2 1 40 normal

execute if entity @s[tag=killinfested] at @s run scoreboard players add @s cryptid.infestedtimer 1


##init Death
execute if score @s cryptid.player.random matches 1 run playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1 0.1

execute if score @s cryptid.player.random matches 1 run tag @s add killinfested
execute if score @s cryptid.player.random matches 1 run effect give @s wither infinite 10 true

execute if score @s cryptid.player.random matches 1 run effect give @s minecraft:levitation infinite 1 true
execute if score @s cryptid.player.random matches 1 run particle dust_pillar{block_state:{Name:redstone_block}} ~ ~1 ~ .2 .2 .2 .0001 400 normal

##Init corruption
execute if score @s[tag=!killinfested] cryptid.player.random matches 2 run playsound minecraft:cryptid.snap.ambient master @a ~ ~ ~ 1 0.1
execute if score @s[tag=!killinfested] cryptid.player.random matches 2 run particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 .2 0 .0001 90 normal
execute if score @s[tag=!killinfested] cryptid.player.random matches 2 run function cryptid:action/hostile/inithostile

##deathcommands
execute if score @s cryptid.infestedtimer matches 60.. run playsound minecraft:entity.warden.death master @a ~ ~ ~ 1 0.1
execute if score @s cryptid.infestedtimer matches 60.. run particle falling_dust{block_state:{Name:red_concrete}} ~ ~1 ~ 0.2 0.2 0.2 10 500
execute if score @s cryptid.infestedtimer matches 60.. run particle block{block_state:{Name:red_concrete}} ~ ~1 ~ .2 .2 .2 1 40 normal
execute if score @s cryptid.infestedtimer matches 60.. run execute store result score @s cryptid.player.random run random value 1..20

##random event on death
execute if score @s cryptid.player.random matches 1 if score @s cryptid.infestedtimer matches 60.. run function cryptid:events/general/spawnmouth
execute if score @s cryptid.player.random matches 2 if score @s cryptid.infestedtimer matches 60.. run function cryptid:events/general/spawntree
execute if score @s cryptid.player.random matches 4 if score @s cryptid.infestedtimer matches 60.. run function cryptid:events/node/block
##rakjillkill
execute if score @s cryptid.infestedtimer matches 60.. run function cryptid:events/cryptid/infest1
execute if score @s cryptid.infestedtimer matches 60.. run function cryptid:events/quietkill


