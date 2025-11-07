# Sound and visual effects
playsound minecraft:cryptid.mob.death ambient @a[distance=0..15] ~ ~ ~ 1.3 0.9

particle item{item:{id:nether_wart_block}} ~ ~0.5 ~ 0.8 0.8 0.8 0.4 700

particle dust_color_transition{from_color:[0.8,0.24,0.3],to_color:[0.46,0.06,0.02],scale:4} ~ ~1 ~ 0.6 0.6 0.6 200 20

# Revive random player from spectator
tp @r[gamemode=spectator,scores={cryptid.maxlives=0}] @s
execute as @p[gamemode=spectator,scores={cryptid.maxlives=0}] run function cryptid:events/gainlife

# Remove revive items
kill @s