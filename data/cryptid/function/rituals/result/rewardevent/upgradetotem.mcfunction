
playsound minecraft:cryptid.fog.ambient ambient @a[distance=0..20]
effect give @a[distance=0..20] slowness 1 1 true
playsound minecraft:ui.stonecutter.take_result ambient @a[distance=0..20] ~ ~ ~ 3 0.3

particle dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[1.0,1.0,1.0],scale:4} ~ ~.5 ~ 0.8 0.6 0.8 3 80
particle item{item:{id:redstone_block}} ~ ~.5 ~ 2 0.2 2 0 900

particle dust_pillar{block_state:redstone_block} ~ ~ ~ 0.05 0.2 0.05 0.6 200


loot spawn ~ ~ ~ loot cryptid:rituals/upgrade_totem_loot
particle minecraft:enchant ~ ~ ~ 0.1 0.1 0.1 6 250
#playsound minecraft:block.end_portal.spawn ambient @a[distance=..15] ~ ~ ~ 1 2


