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
execute if score @s[scores={cryptid.ritual.turns=..8}] cryptid.timer matches 204..300 if score .heartbeat cryptid.globalevent matches 5 run function cryptid:rituals/initial/checkfocus
execute if score @s[scores={cryptid.ritual.turns=..8}] cryptid.timer matches 204..300 if score .heartbeat cryptid.globalevent matches 17 run function cryptid:rituals/initial/checkfocus
# E-table translate
execute if score @s cryptid.timer matches 203 run function cryptid:rituals/initial/identifyalter


#### Ritual Activly running (timer value 100-200)
execute if score @s cryptid.timer matches 100..200 if score .heartbeat cryptid.globalevent matches 1..12 run tp @s ~ ~ ~ facing entity @p
execute if score @s cryptid.timer matches 100..400 run particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~-4 ~ 2 0 2 0 10



# Generate Random Number for Ritual Outcome and decide result in 1 Tick
execute if score @s cryptid.timer matches 100 run function cryptid:rituals/random/numbergenerator

## Outcome Animation Handling (timer value -100 - -200)
# Fail animation
execute if score @s[tag=ritual.failure] cryptid.timer matches -120..-100 run tp @s ~ ~0.5 ~
execute if score @s[tag=ritual.failure] cryptid.timer matches -200..-120 run tp @s ~ ~-0.6 ~
execute if score @s[tag=ritual.failure] cryptid.timer matches -200 run kill @s

# Success animation
execute if score @s[tag=ritual.success] cryptid.timer matches -100 run playsound minecraft:cryptid.sword.spawn hostile @a
execute if score @s[tag=ritual.success] cryptid.timer matches -120..-110 run tp @s ~ ~0.1 ~
execute if score @s[tag=ritual.success] cryptid.timer matches -200..-120 run tp @s ~ ~-0.2 ~
execute if score @s[tag=ritual.success] cryptid.timer matches -200 run kill @s
# Despawn
execute if score @s cryptid.timer matches 0 unless entity @p[distance=..12] run function cryptid:action/general/grounddeath

######### Timer
execute unless score @s cryptid.timer matches 0 run scoreboard players remove @s cryptid.timer 1