###init
execute as @s[tag=!init] run playsound minecraft:cryptid.ambience.foreboding ambient @p ~ ~ ~ 2 0.1
execute as @s[tag=!init] run time add 7000
execute as @s[tag=!init] run tag @s add init






kill @e[type=armor_stand, tag=cryptid.glitchdemo]

execute store result score @s cryptid.player.random run random value 1..3

execute if score @s cryptid.player.random matches 1 run summon armor_stand ~ ~ ~ {Invisible:1b,CustomNameVisible:1b,CustomName:'[{"text":"\\ua010","font":"minecraft:images"}]', Tags:["cryptid.glitchdemo"]}



execute if entity @p[distance=100..] run function cryptid:events/quietkill



execute if score @s cryptid.timer matches -100 run tellraw @a[distance=0..50] {"translate":"cryptid.event.angrystalker.msg1","color":"red"}
execute if score @s cryptid.timer matches -400 run tellraw @a[distance=0..50] {"translate":"cryptid.event.angrystalker.msg2","color":"red"}
execute if score @s cryptid.timer matches -400 if entity @p[distance=50..] run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.timer matches -400 if entity @p[distance=50..] run kill @s
execute if score @s cryptid.timer matches -800 run tellraw @a[distance=0..50] {"translate":"cryptid.event.angrystalker.msg3","color":"red"}
execute if score @s cryptid.timer matches -1000 run tellraw @a[distance=0..50] {"translate":"cryptid.event.angrystalker.msg4","color":"red"}
execute if score @s cryptid.timer matches -1000 run function cryptid:action/angrystalker/detonate








###angry mode


execute if entity @s[tag=angry] run tag @a[distance=0..50] add cryptid.blackscreen



execute if entity @s[tag=angry] if score .heartbeat cryptid.globalevent matches 1 run function cryptid:action/angrystalker/tp

execute if entity @s[tag=angry] if score .heartbeat cryptid.globalevent matches 12 run function cryptid:action/angrystalker/tp


execute if entity @s[tag=angry] run playsound minecraft:cryptid.jumpscare1 ambient @a ~ ~ ~ 4 0.1



##kilkl

execute if entity @s[tag=angry] if entity @p[distance=0..2.5] run function cryptid:action/angrystalker/kill