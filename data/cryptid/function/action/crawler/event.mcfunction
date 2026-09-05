execute as @s store result score @s cryptid.random run random value 1..15
scoreboard players set @a[distance=..25] cryptid.player.titlecooldown 40


execute if score @s cryptid.random matches 1 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_1","color":"dark_red"}

execute if score @s cryptid.random matches 2 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_2","color":"dark_red"}

execute if score @s cryptid.random matches 3 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_3","color":"dark_red"}

execute if score @s cryptid.random matches 4 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_4","color":"dark_red"}

execute if score @s cryptid.random matches 5 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_5","color":"dark_red"}

execute if score @s cryptid.random matches 6 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_6","color":"dark_red"}

execute if score @s cryptid.random matches 7 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_7","color":"dark_red"}

execute if score @s cryptid.random matches 8 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_8","color":"dark_red"}

execute if score @s cryptid.random matches 9 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_9","color":"dark_red"}

execute if score @s cryptid.random matches 10 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_10","color":"dark_red"}

execute if score @s cryptid.random matches 11 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_11","color":"dark_red"}

execute if score @s cryptid.random matches 12 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_12","color":"dark_red"}

execute if score @s cryptid.random matches 13 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_13","color":"dark_red"}

execute if score @s cryptid.random matches 14 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_14","color":"dark_red"}

execute if score @s cryptid.random matches 15 run title @a[distance=0..25] actionbar {"translate":"cryptid.begging.msg_15","color":"dark_red"}

playsound minecraft:cryptid.admin.message ambient @a ~ ~ ~ 2 0.1