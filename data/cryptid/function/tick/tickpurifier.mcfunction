
execute if score .heartbeat cryptid.globalevent matches 0 anchored eyes run function cryptid:action/purifier/purify_step1
execute if score .heartbeat cryptid.globalevent matches 1 anchored eyes run function cryptid:action/purifier/purify_step2
execute if score .heartbeat cryptid.globalevent matches 2 anchored eyes run function cryptid:action/purifier/purify_step3
execute if score .heartbeat cryptid.globalevent matches 3 anchored eyes run function cryptid:action/purifier/purify_step4
execute if score .heartbeat cryptid.globalevent matches 4 anchored eyes run function cryptid:action/purifier/purify_step5
execute if score .heartbeat cryptid.globalevent matches 5 anchored eyes run function cryptid:action/purifier/purify_step6

execute if score .heartbeat cryptid.globalevent matches 5 run tp @s ~ ~-0.4 ~ ~18 ~

#execute if score .heartbeat cryptid.globalevent matches 6 anchored eyes run function cryptid:action/purifier/purify_step1
#execute if score .heartbeat cryptid.globalevent matches 7 anchored eyes run function cryptid:action/purifier/purify_step2
#execute if score .heartbeat cryptid.globalevent matches 8 anchored eyes run function cryptid:action/purifier/purify_step3
#execute if score .heartbeat cryptid.globalevent matches 9 anchored eyes run function cryptid:action/purifier/purify_step4
#execute if score .heartbeat cryptid.globalevent matches 10 anchored eyes run function cryptid:action/purifier/purify_step5
#execute if score .heartbeat cryptid.globalevent matches 11 anchored eyes run function cryptid:action/purifier/purify_step6

#execute if score .heartbeat cryptid.globalevent matches 11 run tp @s ~ ~-0.4 ~ ~18 ~

execute if score .heartbeat cryptid.globalevent matches 12 anchored eyes run function cryptid:action/purifier/purify_step1
execute if score .heartbeat cryptid.globalevent matches 13 anchored eyes run function cryptid:action/purifier/purify_step2
execute if score .heartbeat cryptid.globalevent matches 14 anchored eyes run function cryptid:action/purifier/purify_step3
execute if score .heartbeat cryptid.globalevent matches 15 anchored eyes run function cryptid:action/purifier/purify_step4
execute if score .heartbeat cryptid.globalevent matches 16 anchored eyes run function cryptid:action/purifier/purify_step5
execute if score .heartbeat cryptid.globalevent matches 17 anchored eyes run function cryptid:action/purifier/purify_step6

#execute if score .heartbeat cryptid.globalevent matches 17 run tp @s ~ ~-0.4 ~ ~18 ~

#execute if score .heartbeat cryptid.globalevent matches 18 anchored eyes run function cryptid:action/purifier/purify_step1
#execute if score .heartbeat cryptid.globalevent matches 19 anchored eyes run function cryptid:action/purifier/purify_step2
#execute if score .heartbeat cryptid.globalevent matches 20 anchored eyes run function cryptid:action/purifier/purify_step3
#execute if score .heartbeat cryptid.globalevent matches 21 anchored eyes run function cryptid:action/purifier/purify_step4
#execute if score .heartbeat cryptid.globalevent matches 22 anchored eyes run function cryptid:action/purifier/purify_step5
#execute if score .heartbeat cryptid.globalevent matches 23 anchored eyes run function cryptid:action/purifier/purify_step6


execute if score .heartbeat cryptid.globalevent matches 23 run tp @s ~ ~-0.4 ~ ~18 ~

#execute store result score @s cryptid.player.random run random value 1..1000

execute if score @s cryptid.timer matches ..0 run kill @s
execute if score .heartbeat cryptid.globalevent matches 23 run scoreboard players remove @s cryptid.timer 1




playsound minecraft:block.beacon.ambient ambient @a[distance=0..30] ~ ~ ~ 10 0.1


#particle end_rod ~ ~0.25 ~ 10 1.5 10 0 200

