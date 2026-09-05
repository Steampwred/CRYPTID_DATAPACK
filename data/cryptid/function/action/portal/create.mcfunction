playsound minecraft:cryptid.mob.alert ambient @a ~ ~1000 ~ 100 0.1
tellraw @a {"translate":"chat.cryptid.event.gate_open","color":"red"}
tellraw @a ["",{"translate":"chat.cryptid.event.survive_reward","color":"red"},{"text":"\n"},{"translate":"chat.cryptid.event.go_below","color":"dark_red"}]
time set midnight
particle block_marker{block_state:{Name:nether_wart_block}} ~ ~ ~2 1.5 10 1.5 1 1000
place feature cryptid:convertflesh ~ ~ ~2
execute positioned ~ ~ ~2 run fill ~1 200 ~1 ~-1 -64 ~-1 air
tag @a add cryptid.glitchscreen
execute as @a at @s run function cryptid:action/give/givevoidtotem
execute if score .global cryptid.world.furymessage matches 11 run scoreboard players add .global cryptid.world.furymessage 1
