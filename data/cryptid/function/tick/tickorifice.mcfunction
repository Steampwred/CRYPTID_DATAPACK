execute store result score @s cryptid.player.random run random value 1..20000

execute if entity @s[tag=!init] run tag @s add init



#execute if score @s cryptid.player.random matches 4..6 run function cryptid:events/node/block


#scoreboard players remove @p[distance=0..10] cryptid.player.harmony 2
particle falling_dust{block_state:{Name:red_concrete_powder}} ~ ~2 ~ 0.4 0.4 0.4 10 2
