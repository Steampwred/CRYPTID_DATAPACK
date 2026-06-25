
playsound minecraft:cryptid.mob.alert ambient @a ~ ~1000 ~ 100 0.1
tellraw @a {"text":"The gate to hell has opened","color":"red"}
tellraw @a ["",{"text":"You have earned our respect, surving this long.\nTake this totem, it will protect you from the void","color":"red"},{"text":"\n"},{"text":"And go beneath the bedrock.","color":"dark_red"}]
time set midnight
particle block_marker{block_state:{Name:nether_wart_block}} ~ ~ ~2 1.5 10 1.5 1 1000
place feature cryptid:convertflesh ~ ~ ~2
execute positioned ~ ~ ~2 run fill ~1 200 ~1 ~-1 -64 ~-1 air
tag @a add cryptid.glitchscreen
execute as @a at @s run function cryptid:action/give/givevoidtotem
execute if score .global cryptid.world.furymessage matches 11 run scoreboard players add .global cryptid.world.furymessage 1