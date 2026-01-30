kill @e[tag=bosscryptid]

tellraw @a "This world has been cleansed. Thank you for your service"

execute as @a at @s if dimension cryptid:below run execute in minecraft:overworld positioned ~ 1000 ~ positioned over motion_blocking_no_leaves run tp @s ~ ~ ~

playsound minecraft:music.credits ambient @a
scoreboard players set cleared cryptid.globalevent 1

execute as @a at @s run function cryptid:action/give/givehand
bossbar set minecraft:cryptid.root players
