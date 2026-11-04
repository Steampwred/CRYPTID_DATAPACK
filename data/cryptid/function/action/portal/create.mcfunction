playsound minecraft:cryptid.mob.alert ambient @a ~ ~1000 ~ 100 0.1
tellraw @a {"translate":"chat.cryptid.event.gate_open","color":"red"}
tellraw @a ["",{"translate":"chat.cryptid.event.survive_reward","color":"red"},{"text":"\n"},{"translate":"chat.cryptid.event.go_below","color":"dark_red"}]
time set midnight
particle block_marker{block_state:{Name:nether_wart_block}} ~ ~ ~2 1.5 10 1.5 1 1000

execute positioned over world_surface positioned ~ ~ ~2 run fill ~2 ~-5 ~2 ~-2 ~5 ~-2 red_concrete replace #cryptid:breakable
execute positioned over world_surface positioned ~ ~ ~2 run fill ~2 ~-5 ~2 ~-2 -64 ~-2 nether_wart_block hollow

execute positioned over world_surface positioned ~ ~3 ~3 run function cryptid:rituals/result/rewardevent/mishap/meatquake
execute positioned over world_surface positioned ~ ~4 ~1 run function cryptid:rituals/result/rewardevent/mishap/meatquake
execute positioned over world_surface positioned ~-1 ~2 ~2 run function cryptid:rituals/result/rewardevent/mishap/meatquake
execute positioned over world_surface positioned ~1 ~3 ~2 run function cryptid:rituals/result/rewardevent/mishap/meatquake


execute positioned ~ ~ ~2 run fill ~1 200 ~1 ~-1 -64 ~-1 air
tag @a add cryptid.glitchscreen
execute as @a at @s run function cryptid:action/give/givevoidtotem

execute if score .global cryptid.world.furymessage matches 12 run scoreboard players add .global cryptid.world.furymessage 1
