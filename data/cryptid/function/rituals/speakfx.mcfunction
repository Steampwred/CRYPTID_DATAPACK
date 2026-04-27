execute at @s run tp @s ~ ~ ~ facing entity @p
effect give @p slowness 1 4 true
effect give @p minecraft:darkness 3 1
playsound minecraft:cryptid.bone.knock ambient @a[distance=..10] ~ ~ ~ 1


execute store result score @s cryptid.player.random run random value 1..3
execute if score @s cryptid.player.random matches 1 run title @a[distance=..10] actionbar {"text":"HooaOoA ki","color":"red","obfuscated": true}
execute if score @s cryptid.player.random matches 2 run title @a[distance=..10] actionbar {"text":"srHij issozxc vui","color":"red","obfuscated": true}
execute if score @s cryptid.player.random matches 3 run title @a[distance=..10] actionbar {"text":"HaaA K kaK kAKnAKKl iismZZxi","color":"red","obfuscated": true}


#execute as @p at @s anchored eyes positioned ^ ^-0.00035 ^ run particle minecraft:item{item:{id:redstone_block}} ^ ^-0.2 ^0.9 ^ ^300000 ^1000000 0.0000004 0
execute as @p at @s run tp @s ~ ~ ~ facing entity @n[tag=cryptid.orifice]
#execute as @p at @s positioned ~ ~3 ~ run particle enchant ~ ~ ~ 0.0 0.0 0.0 3 10