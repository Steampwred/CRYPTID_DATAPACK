#execute store result score @s cryptid.player.random run random value 1..20000

execute as @s[tag=cryptid.fallground] run return fail
##init
execute if entity @s[tag=!init] run scoreboard players set @s cryptid.timer 40
execute if entity @s[tag=!init] run tag @s add init

# Spawn and Idle Animation (timer value 0-40)
execute if score @s cryptid.timer matches 20..41 run tp @s ~ ~0.2 ~ facing entity @p
execute if score @s cryptid.timer matches 1..20 run tp @s ~ ~0.05 ~ facing entity @p
execute if score @s cryptid.timer matches 0 run tp @s ~ ~ ~ facing entity @p

#### Ritual Initiate (timer value 200-400)
# Check cardinal and ordinal directions for ritual
execute if score @s[scores={cryptid.ritual.turns=..8}] cryptid.timer matches 208..400 if score .heartbeat cryptid.globalevent matches 5 run function cryptid:rituals/initial/checkfocus
# E-table translate
execute if score @s cryptid.timer matches 205 run function cryptid:rituals/initial/checkalter1

#### Ritual Activly running (timer value 100-200)
execute if score @s cryptid.timer matches 100..200 if score .heartbeat cryptid.globalevent matches 1..12 run tp @s ~ ~ ~ facing entity @p
execute if score @s cryptid.timer matches 100..400 run particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~-4 ~ 2 0 2 0 10

# Generate Random Number for Ritual Outcome
execute if score @s cryptid.timer matches 100 run function cryptid:rituals/result/checkalter2
execute if score @s cryptid.timer matches 100 run function cryptid:rituals/random/numbergenerator


# Despawn
execute if score @s cryptid.timer matches 0 unless entity @p[distance=..8] run function cryptid:action/general/grounddeath

######### Timer
execute if score @s cryptid.timer matches 1.. run scoreboard players remove @s cryptid.timer 1