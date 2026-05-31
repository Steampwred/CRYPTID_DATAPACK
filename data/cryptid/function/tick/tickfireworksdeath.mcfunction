scoreboard players remove @s[scores={cryptid.infestedtimer=-60..}] cryptid.infestedtimer 1
execute unless score @s cryptid.infestedtimer matches ..0 run return fail

##init
execute if entity @s[tag=!init.pop] run playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1 0.1
execute if entity @s[tag=!init.pop] run effect give @s wither infinite 10 true
execute if entity @s[tag=!init.pop] run effect give @s minecraft:levitation infinite 1 true
execute if entity @s[tag=!init.pop] run particle dust_pillar{block_state:{Name:redstone_block}} ~ ~1 ~ .2 .2 .2 .0001 400 normal
tag @s[tag=!init.pop] add init.pop

## constant
particle block{block_state:{Name:red_concrete}} ~ ~1 ~ .2 .2 .2 1 30 normal


## Death
execute unless score @s cryptid.infestedtimer matches -61 run return fail
particle falling_dust{block_state:{Name:red_concrete}} ~ ~1 ~ 0.2 0.2 0.2 10 500
particle block{block_state:{Name:red_concrete}} ~ ~1 ~ .2 .2 .2 1 40 normal
execute store result score @s cryptid.player.random run random value 1..20
execute if score @s cryptid.player.random matches 1 positioned ~ ~-3.2 ~ run function cryptid:events/general/spawnmouth
execute if score @s cryptid.player.random matches 2 positioned ~ ~-3.2 ~ run function cryptid:events/general/spawntree
execute if score @s cryptid.player.random matches 4 positioned ~ ~-3.2 ~ run function cryptid:events/node/block
execute if score @s cryptid.player.random matches 1..8 as @n[tag=cryptid.infested,tag=!cryptid.evilmob,tag=!killinfested,distance=..10] run tag @s add killinfested

function cryptid:action/general/explodedeath
kill @s