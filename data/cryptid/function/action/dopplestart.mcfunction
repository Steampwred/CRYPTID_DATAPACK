kill @e[tag=cryptid.doppleclone,sort=nearest,limit=1, distance=0..3]

#scoreboard players reset @s cryptid.dopple.id
#scoreboard players reset @e[tag=cryptid.doppleclone,sort=nearest,limit=1] cryptid.dopple.id

attribute @s minecraft:generic.scale base set 3

effect clear @s minecraft:weakness
effect clear @s minecraft:slowness

item replace entity @s armor.head with potion[minecraft:custom_model_data=1308]

effect give @s minecraft:speed infinite 2 true



tag @s add cryptid.doppleawakened

playsound minecraft:cryptid.jelly.capture ambient @a[distance=0..30] ~ ~ ~ 2 1.4

particle dust_pillar{block_state:{Name:nether_wart_block}} ~-1 ~1 ~ 0.5 0.5 0.5 1 400 force

particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.5 0.5 0.5 1 400 force

particle dust_pillar{block_state:{Name:nether_wart_block}} ~1 ~1 ~ 0.5 0.5 0.5 1 400 force

particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~1 ~-1 0.5 0.5 0.5 1 400 force

particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~1 ~1 0.5 0.5 0.5 1 400 force

