
execute store result score @s cryptid.player.random run random value 1..4000


execute if entity @s[tag=cryptid.evilmob] run function cryptid:tick/tickevilmob


#Infest Others
# execute if score @s[tag=!cryptid.evilmob,tag=!killinfested] cryptid.player.random matches 3..100 as @n[tag=!cryptid.evilmob,tag=!killinfested,distance=..3,type=#cryptid:sacrificeable] run function cryptid:action/infested/infestinit
# ^ for some reason supper lag from multiple executed particles???


#Convert to evil
execute if score @s[tag=!cryptid.evilmob,tag=!killinfested] cryptid.player.random matches 2 run function cryptid:action/infested/hostileinit


#kill and spread
execute if score @s[tag=!cryptid.evilmob] cryptid.player.random matches 1 run tag @s add killinfested















### Death pop
execute unless entity @s[tag=killinfested] run return fail

tag @s[tag=!init.pop] add cryptid.timer

execute unless score @s cryptid.timer matches ..-40 run return fail
execute if entity @s[tag=!init.pop] run playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1 0.1
execute if entity @s[tag=!init.pop] run effect give @s wither infinite 10 true
execute if entity @s[tag=!init.pop] run effect give @s minecraft:levitation infinite 1 true
execute if entity @s[tag=!init.pop] run particle dust_pillar{block_state:{Name:redstone_block}} ~ ~1 ~ .2 .2 .2 .0001 400 normal

tag @s[tag=!init.pop] add init.pop

particle block{block_state:{Name:red_concrete}} ~ ~1 ~ .2 .2 .2 1 40 normal

## Death
execute unless score @s cryptid.timer matches ..-90 run return fail
playsound minecraft:entity.warden.death master @a ~ ~ ~ 1 0.1
particle falling_dust{block_state:{Name:red_concrete}} ~ ~1 ~ 0.2 0.2 0.2 10 500
particle block{block_state:{Name:red_concrete}} ~ ~1 ~ .2 .2 .2 1 40 normal
execute store result score @s cryptid.player.random run random value 1..20

execute if score @s cryptid.player.random matches 1 run function cryptid:events/general/spawnmouth
execute if score @s cryptid.player.random matches 2 run function cryptid:events/general/spawntree
execute if score @s cryptid.player.random matches 4 run function cryptid:events/node/block

execute if score @s cryptid.player.random matches 1..8 as @n[tag=cryptid.infested,tag=!cryptid.evilmob,tag=!killinfested,distance=..10] run tag @s add killinfested


function cryptid:events/quietkill