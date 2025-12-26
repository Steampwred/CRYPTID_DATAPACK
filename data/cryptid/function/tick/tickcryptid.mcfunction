##timing
scoreboard players remove @s[tag=cryptid.timer] cryptid.timer 1
execute as @s[tag=cryptid.doppleclone] at @s run function cryptid:tick/doppleclonetick
##init
execute as @s[tag=!cryptidinit] at @s run function cryptid:action/cryptidinit

##despawns

execute as @s[tag=cryptid.fallground] at @s run tp @s ~ ~-0.2 ~
execute as @s[tag=cryptid.fallground] at @s run particle dust_pillar{block_state:{Name:netherrack}} ~ ~0.5 ~ 0.3 0 0.3 0.1 15 normal
execute as @s[tag=cryptid.fallground, scores={cryptid.timer=..-20}] run kill @s

##general check
execute if score .heartbeat cryptid.globalevent matches 2 run function cryptid:action/general/generalcheck